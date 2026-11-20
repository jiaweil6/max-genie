# Max Genie

A Max/MSP instrument that lets you play piano with eight keys. It runs Piano Genie, a model by Chris Donahue, Ian Simon, and Sander Dieleman that turns eight buttons into notes across the full 88-key range. Max Genie then arranges those notes in a chosen style and plays them through sampled instruments and an effects chain.

## Features

- Eight-button input from the computer keyboard: `A S D F J K L ;`
- Piano Genie runs locally through Node for Max. The model is included in `piano_genie_model/`, so no internet connection is needed.
- A style arranger with classical, jazz, J-pop, and Genie styles, plus key and major/minor settings
- Four sampled voices: piano, organ, guitar, and violin, played polyphonically
- Effects: chorus, stereo delay, and reverb, with a dry/wet mix

## Running it

Requires Max 9, which includes Node for Max.

1. If `node_modules/` is missing, run `npm install` in this folder. This needs an internet connection once.
2. Open `max-genie.maxpat`.
3. The Max console prints "Piano Genie ready" once the model has loaded.

Keep every file in this folder. Max finds the abstractions, scripts, and samples by name in the patch's own folder.

## Files

| File | Purpose |
|---|---|
| `max-genie.maxpat` | Main patch: interface, input, and signal routing |
| `pianogenie.js` | Node for Max script that runs Piano Genie |
| `piano_genie_model/` | Piano Genie weights (Magenta's epiano checkpoint) |
| `style_arranger.js` | Arranges Piano Genie's notes in the selected style and key |
| `voices.maxpat` | One sampled instrument voice, run eight times in `poly~` |
| `ljw-chorus.maxpat`, `ljw-stereodelay.maxpat`, `ljw-nonclick-tapIO.maxpat`, `ljw-reverb.maxpat` | Effects |
| `blr-drywet-stereo.maxpat` | Dry/wet mixer, by Brian Riordan |
| `ljw-controller.maxpat` | Controller input |
| `guitar.wav`, `organ.wav`, `violin.wav`, `piano.mp3` | Instrument samples |

## Credits

All patches and scripts are by Jiawei Liu, except `blr-drywet-stereo.maxpat`, which is by Brian Riordan.

Piano Genie: Chris Donahue, Ian Simon, and Sander Dieleman, "Piano Genie," ACM IUI 2019. The model and the `@magenta/music` library are from Google's Magenta project.
