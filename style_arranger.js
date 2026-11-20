autowatch = 1;
outlets = 1;

// ======================================================
// Global state
// ======================================================

var currentStyle = "classical"; // classical | jazz | jpop | genie
var tonic = 0;                  // 0-11
var modeName = "major";         // major | minor
var MIDI_NOTE_MIN = 0;
var MIDI_NOTE_MAX = 127;
var MIDI_VELOCITY_MIN = 0;
var MIDI_VELOCITY_MAX = 127;
var melodicState = {
    inputPitch: null,
    outputPitch: null
};

// active input notes by voice: voice -> { pitch, vel }
var activeInputs = {};

// currently sounding arranged notes by voice: voice -> { pitch, vel }
var activeOutputs = {};

// ======================================================
// Public API
// ======================================================

function style(name) {
    currentStyle = String(name);
    clearMelodicState();
    post("style_arranger: style = " + currentStyle + "\n");
    recomputeTexture(false);
}

function key(k) {
    tonic = mod12(parseInt(k, 10));
    clearMelodicState();
    post("style_arranger: key = " + tonic + "\n");
    recomputeTexture(false);
}

function mode(m) {
    modeName = String(m);
    clearMelodicState();
    post("style_arranger: mode = " + modeName + "\n");
    recomputeTexture(false);
}

function reset() {
    for (var v in activeOutputs) {
        if (activeOutputs.hasOwnProperty(v)) {
            outlet(0, [
                "noteoff",
                parseInt(v, 10),
                normalizeMidiNote(activeOutputs[v].pitch, "reset voice " + v),
                0
            ]);
        }
    }
    activeInputs = {};
    activeOutputs = {};
    clearMelodicState();
}

function noteon(voice, pitch, vel) {
    voice = parseInt(voice, 10);
    pitch = normalizeMidiNote(pitch, "input voice " + voice);
    vel = normalizeMidiVelocity(vel, "input voice " + voice);

    if (!isFinite(voice) || pitch === null || vel === null) {
        return;
    }

    activeInputs[voice] = { pitch: pitch, vel: vel };
    recomputeTexture(false); // allow restyling on noteon
}

function noteoff(voice, pitch, vel) {
    voice = parseInt(voice, 10);

    if (!isFinite(voice)) {
        return;
    }

    if (activeInputs.hasOwnProperty(voice)) {
        delete activeInputs[voice];
    }

    recomputeTexture(true); // freeze surviving voices on noteoff
}

// ======================================================
// Main recompute
// ======================================================

function recomputeTexture(freezeExisting) {
    var voices = getSortedActiveVoices();
    var desired = {};

    if (voices.length === 0) {
        flushOutputs({});
        return;
    }

    if (isPassthroughStyle()) {
        desired = buildPassthroughTexture(voices);
    } else if (freezeExisting) {
        desired = buildFrozenTexture(voices);
    } else {
        desired = buildIncrementalTexture(voices);
    }

    rememberMelodicState(voices, desired);
    flushOutputs(desired);
}

function buildFrozenTexture(voices) {
    var desired = {};

    for (var i = 0; i < voices.length; i++) {
        var v = voices[i].voice;
        var vel = voices[i].vel;
        var zone = inferZone(i, voices.length);

        if (activeOutputs.hasOwnProperty(v)) {
            desired[v] = {
                pitch: activeOutputs[v].pitch,
                vel: styleVelocity(vel, zone)
            };
        } else {
            desired[v] = {
                pitch: voices[i].pitch,
                vel: styleVelocity(vel, zone)
            };
        }
    }

    return desired;
}

function buildGeneralTexture(voices) {
    var desired = {};
    var placed = [];

    for (var i = 0; i < voices.length; i++) {
        var item = voices[i];
        var zone = inferZone(i, voices.length);

        var outPitch = chooseGeneralStyledPitch(
            item.pitch,
            zone,
            placed,
            i,
            voices.length
        );

        placed.push(outPitch);

        desired[item.voice] = {
            pitch: outPitch,
            vel: styleVelocity(item.vel, zone)
        };
    }

    return desired;
}

function buildIncrementalTexture(voices) {
    if (voices.length === 1) {
        return buildMelodicTexture(voices[0]);
    }

    var desired = {};
    var placed = [];

    for (var i = 0; i < voices.length; i++) {
        var item = voices[i];
        var zone = inferZone(i, voices.length);
        var preservedPitch = getPreservedPitch(item.voice);

        if (preservedPitch !== null) {
            desired[item.voice] = {
                pitch: preservedPitch,
                vel: styleVelocity(item.vel, zone)
            };
            placed.push(preservedPitch);
            continue;
        }

        var outPitch = chooseIncrementalStyledPitch(
            item.pitch,
            zone,
            placed,
            getFuturePreservedPitches(voices, i + 1)
        );

        placed.push(outPitch);

        desired[item.voice] = {
            pitch: outPitch,
            vel: styleVelocity(item.vel, zone)
        };
    }

    return desired;
}

function buildMelodicTexture(item) {
    var desired = {};
    var outPitch = chooseMelodicStyledPitch(item.pitch);

    desired[item.voice] = {
        pitch: outPitch,
        vel: styleVelocity(item.vel, "solo")
    };

    return desired;
}

function buildPassthroughTexture(voices) {
    var desired = {};

    for (var i = 0; i < voices.length; i++) {
        var item = voices[i];

        desired[item.voice] = {
            pitch: item.pitch,
            vel: item.vel
        };
    }

    return desired;
}

// compare previous arranged state vs new arranged state
function flushOutputs(desired) {
    var v;
    desired = normalizeTexture(desired);

    // turn off changed or removed notes
    for (v in activeOutputs) {
        if (!activeOutputs.hasOwnProperty(v)) continue;

        var oldPitch = normalizeMidiNote(activeOutputs[v].pitch, "active output voice " + v);
        var vInt = parseInt(v, 10);

        if (oldPitch === null) continue;

        if (!desired.hasOwnProperty(v) || desired[v].pitch !== oldPitch) {
            outlet(0, ["noteoff", vInt, oldPitch, 0]);
        }
    }

    // turn on new or changed notes
    for (v in desired) {
        if (!desired.hasOwnProperty(v)) continue;

        var newPitch = desired[v].pitch;
        var newVel = desired[v].vel;
        var vv = parseInt(v, 10);

        if (!activeOutputs.hasOwnProperty(v) || normalizeMidiNote(activeOutputs[v].pitch, "compare voice " + v) !== newPitch) {
            outlet(0, ["noteon", vv, newPitch, newVel]);
        }
    }

    activeOutputs = desired;
}

// ======================================================
// Active voice utilities
// ======================================================

function getSortedActiveVoices() {
    var arr = [];

    for (var v in activeInputs) {
        if (activeInputs.hasOwnProperty(v)) {
            arr.push({
                voice: parseInt(v, 10),
                pitch: activeInputs[v].pitch,
                vel: activeInputs[v].vel
            });
        }
    }

    // always sort by input pitch
    arr.sort(function(a, b) {
        return a.pitch - b.pitch;
    });

    return arr;
}

function inferZone(index, total) {
    if (total === 1) return "solo";
    if (index === 0) return "bass";
    if (index === total - 1) return "top";
    return "middle";
}

// ======================================================
// One general arranging mode
// ======================================================

function chooseGeneralStyledPitch(inputPitch, zone, placed, index, total) {
    var candidates = buildCandidates(inputPitch, zone);
    var best = candidates[0];
    var bestScore = -999999;

    for (var i = 0; i < candidates.length; i++) {
        var note = candidates[i];
        var s = generalScore(note, inputPitch, zone, placed);

        if (s > bestScore) {
            bestScore = s;
            best = note;
        }
    }

    return best;
}

function chooseIncrementalStyledPitch(inputPitch, zone, placed, upperReserved) {
    var candidates = buildCandidates(inputPitch, zone);
    var best = candidates[0];
    var bestScore = -999999;

    for (var i = 0; i < candidates.length; i++) {
        var note = candidates[i];
        var s = generalScore(note, inputPitch, zone, placed);

        s += upperSpacingScore(note, upperReserved, zone);

        if (s > bestScore) {
            bestScore = s;
            best = note;
        }
    }

    return best;
}

function chooseMelodicStyledPitch(inputPitch) {
    var candidates = buildCandidates(inputPitch, "solo");
    var best = candidates[0];
    var bestScore = -999999;
    var targetPitch = melodicTargetPitch(inputPitch);
    var inputDelta = melodicInputDelta(inputPitch);

    for (var i = 0; i < candidates.length; i++) {
        var note = candidates[i];
        var s = generalScore(note, inputPitch, "solo", []);

        s -= Math.abs(note - targetPitch) * melodicTargetWeight();
        s += melodicDirectionScore(note, inputDelta);
        s += melodicRepeatScore(note, inputDelta);

        if (s > bestScore) {
            bestScore = s;
            best = note;
        }
    }

    return best;
}

function buildCandidates(inputPitch, zone) {
    var candidates = [];
    var radius = candidateRadius();
    var center = clampToRange(inputPitch, stylePitchFloor(), stylePitchCeiling());

    for (var n = center - radius; n <= center + radius; n++) {
        if (n >= stylePitchFloor() && n <= stylePitchCeiling()) {
            candidates.push(n);
        }
    }

    return candidates;
}

function generalScore(note, inputPitch, zone, placed) {
    var rel = mod12(note - tonic);
    var score = 0;

    // 1. stay near the original input note
    score -= Math.abs(note - inputPitch) * 1.1;

    // 2. zone register bias
    score -= Math.abs(note - zoneRegisterCenter(zone)) * zoneRegisterPenalty(zone);

    // 3. style pitch preference
    score += styleToneScore(rel, zone);

    // 4. spacing against already-placed lower notes
    score += spacingScore(note, placed, zone);

    // 5. mild top brightness in jpop
    if (currentStyle === "jpop" && zone === "top" && note >= inputPitch) {
        score += 1.2;
    }

    // 6. mild bass gravity
    if (zone === "bass") {
        score -= Math.max(0, note - bassUpperLimit()) * 0.25;
    }

    return score;
}

function melodicTargetPitch(inputPitch) {
    if (melodicState.inputPitch === null || melodicState.outputPitch === null) {
        return inputPitch;
    }

    return melodicState.outputPitch + melodicInputDelta(inputPitch);
}

function melodicInputDelta(inputPitch) {
    if (melodicState.inputPitch === null) {
        return 0;
    }

    return inputPitch - melodicState.inputPitch;
}

function melodicDirectionScore(note, inputDelta) {
    if (melodicState.outputPitch === null || inputDelta === 0) {
        return 0;
    }

    if (inputDelta > 0) {
        if (note > melodicState.outputPitch) return 5;
        if (note < melodicState.outputPitch) return -10;
    }

    if (inputDelta < 0) {
        if (note < melodicState.outputPitch) return 5;
        if (note > melodicState.outputPitch) return -10;
    }

    return 0;
}

function melodicRepeatScore(note, inputDelta) {
    if (melodicState.outputPitch === null || inputDelta === 0) {
        return 0;
    }

    if (note === melodicState.outputPitch) {
        return -12;
    }

    if (Math.abs(inputDelta) >= 2 && Math.abs(note - melodicState.outputPitch) < 2) {
        return -8;
    }

    return 0;
}

function styleToneScore(rel, zone) {
    var score = 0;

    if (currentStyle === "classical") {
        if (isScaleTone(rel)) score += 8;
        else score -= 14;

        if (isTriadTone(rel)) score += 4;

        if (zone === "bass" && (rel === 0 || rel === 7)) score += 4;
        if (zone === "top" && (rel === 0 || rel === thirdDegree() || rel === 7)) score += 2;
    }

    else if (currentStyle === "jazz") {
        if (isScaleTone(rel)) score += 3;
        else score -= 4;

        if (rel === thirdDegree()) score += 4;
        if (rel === seventhDegree()) score += 4;
        if (isJazzColor(rel)) score += 3;
        if (zone === "bass" && rel === 0) score += 2;
    }

    else { // jpop
        if (isScaleTone(rel)) score += 7;
        else score -= 10;

        if (isJpopBright(rel)) score += 4;
        if (zone === "top" && (rel === 7 || rel === thirdDegree() || rel === sixthDegree() || rel === 2)) {
            score += 2;
        }
        if (zone === "bass" && (rel === 0 || rel === 7)) {
            score += 2;
        }
    }

    return score;
}

function spacingScore(note, placed, zone) {
    if (placed.length === 0) return 0;

    var prev = placed[placed.length - 1];
    var gap = note - prev;
    var score = 0;

    // must stay above previous placed note
    if (gap <= 0) {
        score -= 1000;
        return score;
    }

    // prefer moderate gaps, avoid giant jumps
    if (gap < styleMinGap()) score -= 60;
    else if (gap <= idealGapHigh()) score += 1.5;
    else if (gap > maxReasonableGap()) score -= (gap - maxReasonableGap()) * 3;

    // especially keep middle voices sane
    if (zone === "middle" && gap > 9) {
        score -= (gap - 9) * 4;
    }

    return score;
}

function upperSpacingScore(note, upperReserved, zone) {
    if (upperReserved.length === 0) return 0;

    var next = upperReserved[0];
    var gap = next - note;
    var score = 0;

    if (gap <= 0) {
        score -= 1000;
        return score;
    }

    if (gap < styleMinGap()) score -= 60;
    else if (gap <= idealGapHigh()) score += 1.5;
    else if (gap > maxReasonableGap() && zone === "middle") score -= (gap - maxReasonableGap()) * 1.5;

    return score;
}

function candidateRadius() {
    if (currentStyle === "classical") return 5;
    if (currentStyle === "jazz") return 6;
    return 5;
}

// ======================================================
// Register / spacing helpers
// ======================================================

function zoneRegisterCenter(zone) {
    if (currentStyle === "classical") {
        if (zone === "solo") return 60;
        if (zone === "bass") return 48;
        if (zone === "top") return 72;
        return 60;
    }

    if (currentStyle === "jazz") {
        if (zone === "solo") return 60;
        if (zone === "bass") return 43;
        if (zone === "top") return 72;
        return 60;
    }

    // jpop
    if (zone === "solo") return 64;
    if (zone === "bass") return 48;
    if (zone === "top") return 78;
    return 64;
}

function zoneRegisterPenalty(zone) {
    if (zone === "solo") {
        if (currentStyle === "classical") return 0.05;
        if (currentStyle === "jazz") return 0.04;
        return 0.035;
    }

    if (currentStyle === "classical") return 0.08;
    if (currentStyle === "jazz") return 0.06;
    return 0.05;
}

function styleMinGap() {
    if (currentStyle === "classical") return 2;
    if (currentStyle === "jazz") return 3;
    return 2;
}

function idealGapHigh() {
    if (currentStyle === "jazz") return 7;
    return 6;
}

function maxReasonableGap() {
    if (currentStyle === "jazz") return 12;
    return 10;
}

function bassUpperLimit() {
    if (currentStyle === "jazz") return 52;
    return 55;
}

function stylePitchFloor() {
    return 36;
}

function stylePitchCeiling() {
    return 96;
}

// ======================================================
// Style helpers
// ======================================================

function thirdDegree() {
    return (modeName === "minor") ? 3 : 4;
}

function sixthDegree() {
    return (modeName === "minor") ? 8 : 9;
}

function seventhDegree() {
    if (modeName === "minor") return 10;
    return 11;
}

function isScaleTone(rel) {
    if (modeName === "minor") {
        return contains([0, 2, 3, 5, 7, 8, 10], rel);
    }
    return contains([0, 2, 4, 5, 7, 9, 11], rel);
}

function isTriadTone(rel) {
    return contains([0, thirdDegree(), 7], rel);
}

function isJazzColor(rel) {
    if (modeName === "minor") {
        return contains([10, 2, 5, 8, 1, 6], rel);
    }
    return contains([11, 2, 5, 9, 10, 1, 6], rel);
}

function isJpopBright(rel) {
    if (modeName === "minor") {
        return contains([0, 2, 3, 7, 10], rel);
    }
    return contains([0, 2, 4, 7, 9], rel);
}

function styleVelocity(vel, zone) {
    var out = vel;

    if (currentStyle === "classical") {
        if (zone === "solo") out = Math.floor(vel * 0.96);
        else if (zone === "bass") out = Math.floor(vel * 0.82);
        else if (zone === "top") out = Math.floor(vel * 1.00);
        else out = Math.floor(vel * 0.88);
    }

    else if (currentStyle === "jazz") {
        if (zone === "solo") out = Math.floor(vel * 0.94);
        else if (zone === "bass") out = Math.floor(vel * 0.78);
        else if (zone === "top") out = Math.floor(vel * 0.95);
        else out = Math.floor(vel * 0.86);
    }

    else { // jpop
        if (zone === "solo") out = Math.floor(vel * 1.00);
        else if (zone === "bass") out = Math.floor(vel * 0.85);
        else if (zone === "top") out = Math.floor(vel * 1.05);
        else out = Math.floor(vel * 0.92);
    }

    if (out < 1) out = 1;
    if (out > 127) out = 127;
    return out;
}

// ======================================================
// Utilities
// ======================================================

function contains(arr, x) {
    return arr.indexOf(x) !== -1;
}

function mod12(n) {
    return ((n % 12) + 12) % 12;
}

function normalizeTexture(texture) {
    var normalized = {};

    for (var v in texture) {
        if (!texture.hasOwnProperty(v)) continue;

        var pitch = normalizeMidiNote(texture[v].pitch, "voice " + v);
        var vel = normalizeMidiVelocity(texture[v].vel, "voice " + v);

        if (pitch === null || vel === null) continue;

        normalized[v] = {
            pitch: pitch,
            vel: vel
        };
    }

    return normalized;
}

function getPreservedPitch(voice) {
    if (!activeOutputs.hasOwnProperty(voice)) {
        return null;
    }

    return normalizeMidiNote(activeOutputs[voice].pitch, "preserve voice " + voice);
}

function getFuturePreservedPitches(voices, startIndex) {
    var pitches = [];

    for (var i = startIndex; i < voices.length; i++) {
        var voice = voices[i].voice;
        var preservedPitch = getPreservedPitch(voice);

        if (preservedPitch !== null) {
            pitches.push(preservedPitch);
        }
    }

    return pitches;
}

function rememberMelodicState(voices, desired) {
    if (voices.length !== 1) {
        clearMelodicState();
        return;
    }

    var item = voices[0];

    if (!desired.hasOwnProperty(item.voice)) {
        return;
    }

    melodicState.inputPitch = item.pitch;
    melodicState.outputPitch = desired[item.voice].pitch;
}

function clearMelodicState() {
    melodicState.inputPitch = null;
    melodicState.outputPitch = null;
}

function isPassthroughStyle() {
    return currentStyle === "genie";
}

function melodicTargetWeight() {
    if (currentStyle === "classical") return 1.8;
    if (currentStyle === "jazz") return 1.5;
    return 1.6;
}

function normalizeMidiNote(value, context) {
    var note = parseInt(value, 10);

    if (!isFinite(note)) {
        post("style_arranger: invalid MIDI note from " + context + ": " + value + "\n");
        return null;
    }

    return clampWithPost(note, MIDI_NOTE_MIN, MIDI_NOTE_MAX, "MIDI note", context);
}

function normalizeMidiVelocity(value, context) {
    var vel = parseInt(value, 10);

    if (!isFinite(vel)) {
        post("style_arranger: invalid MIDI velocity from " + context + ": " + value + "\n");
        return null;
    }

    return clampWithPost(vel, MIDI_VELOCITY_MIN, MIDI_VELOCITY_MAX, "MIDI velocity", context);
}

function clampWithPost(value, min, max, label, context) {
    var clamped = value;

    if (clamped < min) clamped = min;
    if (clamped > max) clamped = max;

    if (clamped !== value) {
        post("style_arranger: clamped " + label + " " + value + " -> " + clamped + " (" + context + ")\n");
    }

    return clamped;
}

function clampToRange(value, min, max) {
    if (value < min) return min;
    if (value > max) return max;
    return value;
}
