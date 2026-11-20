const maxAPI = require("max-api");
const Module = require("module");
const fs = require("fs");
const path = require("path");
const tf = require("@tensorflow/tfjs");

function requirePianoGenieModule() {
  const originalLoad = Module._load;

  Module._load = function patchedLoad(request, parent, isMain) {
    if (request === "tone") {
      return {};
    }

    return originalLoad.call(this, request, parent, isMain);
  };

  try {
    return require("@magenta/music/node/piano_genie");
  } finally {
    Module._load = originalLoad;
  }
}

const { PianoGenie } = requirePianoGenieModule();

if (typeof global.performance === "undefined") {
  global.performance = { now: () => Date.now() };
}

// The model ships in piano_genie_model/ so the patch works offline.
// CHECKPOINT_URL is only a fallback if that folder is missing.
const LOCAL_MODEL_DIR = path.join(__dirname, "piano_genie_model");
const CHECKPOINT_URL =
  "https://storage.googleapis.com/magentadata/js/checkpoints/piano_genie/model/epiano/stp_iq_auto_contour_dt_166006";

// Same steps as PianoGenie.initialize() with a URL, but reading the
// manifest and weight shards from disk instead of fetching them.
function loadLocalWeights(dir) {
  const manifest = JSON.parse(
    fs.readFileSync(path.join(dir, "weights_manifest.json"), "utf8")
  );
  const weights = {};

  for (const group of manifest) {
    const data = Buffer.concat(group.paths.map((p) => fs.readFileSync(path.join(dir, p))));
    const buffer = data.buffer.slice(data.byteOffset, data.byteOffset + data.byteLength);
    Object.assign(weights, tf.io.decodeWeights(buffer, group.weights));
  }

  return weights;
}

let genie = null;
let ready = false;
let temperature = 0.25;
const MIDI_NOTE_MIN = 0;
const MIDI_NOTE_MAX = 127;

// Track which MIDI note each held button started so key-up can stop that exact note.
const activeNotes = new Map();

function outletError(message) {
  maxAPI.outlet(["error", message]);
}

function validateButton(value) {
  const button = Number(value);

  if (!Number.isInteger(button) || button < 0 || button > 7) {
    outletError("button must be an integer 0..7");
    return null;
  }

  return button;
}

function normalizeMidiNote(value, context) {
  const numeric = Number(value);

  if (!Number.isFinite(numeric)) {
    throw new Error(`invalid MIDI note from ${context}`);
  }

  const rounded = Math.round(numeric);
  const clamped = Math.max(MIDI_NOTE_MIN, Math.min(MIDI_NOTE_MAX, rounded));

  if (clamped !== rounded) {
    maxAPI.post(`Clamped MIDI note ${rounded} -> ${clamped} (${context})`);
  }

  return clamped;
}

function flushActiveNotes() {
  for (const button of activeNotes.keys()) {
    emitButtonNoteOff(button, "reset");
  }

  activeNotes.clear();
}

function emitButtonNoteOff(button, context) {
  if (!activeNotes.has(button)) {
    return;
  }

  const midiNote = normalizeMidiNote(activeNotes.get(button), `${context} button ${button}`);
  const voice = button + 1;
  maxAPI.outlet(["noteoff", voice, midiNote, 0]);
}

async function init() {
  try {
    maxAPI.post("Loading Piano Genie...");
    if (fs.existsSync(path.join(LOCAL_MODEL_DIR, "weights_manifest.json"))) {
      genie = new PianoGenie();
      await genie.initialize(loadLocalWeights(LOCAL_MODEL_DIR));
      maxAPI.post("Loaded model from piano_genie_model/");
    } else {
      genie = new PianoGenie(CHECKPOINT_URL);
      await genie.initialize();
      maxAPI.post("Loaded model from the internet");
    }
    ready = true;
    maxAPI.post("Piano Genie ready");
    maxAPI.outlet(["ready", 1]);
  } catch (err) {
    ready = false;
    genie = null;
    maxAPI.post(`Init error: ${err.message}`);
    outletError(err.message);
  }
}

init();

maxAPI.addHandler("ping", () => {
  maxAPI.outlet("pong");
});

maxAPI.addHandler("temp", (t) => {
  const value = Number(t);

  if (!Number.isFinite(value) || value < 0 || value > 1) {
    outletError("temperature must be between 0 and 1");
    return;
  }

  temperature = value;
  maxAPI.outlet(["temp", temperature]);
});

// Max sends separate key-down and key-up events, so we keep note lifetime
// explicit instead of using makenote-style duration logic.
maxAPI.addHandler("down", (b) => {
  if (!ready || !genie) {
    maxAPI.outlet(["error", "model not ready"]);
    return;
  }

  const button = validateButton(b);
  if (button === null) {
    return;
  }

  if (activeNotes.has(button)) {
    emitButtonNoteOff(button, "retrigger");
    activeNotes.delete(button);
  }

  try {
    const pianoKey = genie.next(button, temperature);
    const midiNote = normalizeMidiNote(pianoKey + 21, `button ${button}`);
    const voice = button + 1;   // important: poly~ uses 1-based voice numbers

    activeNotes.set(button, midiNote);

    maxAPI.outlet(["noteon", voice, midiNote, 100]);
  } catch (err) {
    maxAPI.outlet(["error", err.message]);
  }
});

maxAPI.addHandler("up", (b) => {
  const button = validateButton(b);
  if (button === null) {
    return;
  }

  if (!activeNotes.has(button)) {
    return;
  }

  emitButtonNoteOff(button, "release");
  activeNotes.delete(button);
});

maxAPI.addHandler("reset", () => {
  if (!ready || !genie) {
    outletError("model not ready");
    return;
  }

  try {
    genie.resetState();
    flushActiveNotes();
    maxAPI.outlet(["reset", 1]);
  } catch (err) {
    outletError(err.message);
  }
});
