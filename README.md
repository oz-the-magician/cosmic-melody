# Cosmic Melody

**Turns a date into a 30-second piece of music.** The position of the Sun and the phase of the Moon on the chosen date set the key, mode, tempo and harmony. Real orchestral samples then play the result right in the browser.

> 🇷🇺 Генератор «Космическая мелодия даты»: дата → положение Солнца и фаза Луны → лад, темп и гармония → 30 секунд музыки на живых оркестровых сэмплах.

## How it works

| Sky parameter | Musical parameter |
|---|---|
| Sun's ecliptic longitude (zodiac sign) | Root note |
| Moon phase & illumination | Mode (one of 8) and dynamics |
| Combined sky state | Tempo, chord progression, scene structure |

Six voices are arranged on top of that: **piano** lead, **string ensemble** pad, **contrabass** pizzicato, **harp** arpeggios, **timpani** accents and a **wood click** pulse. Everything is synthesized with the Web Audio API: no dependencies, no build step, no CDN.

## Run locally

Browsers block audio loading from `file://`, so serve the folder over HTTP:

```bash
python3 -m http.server 8765
# open http://localhost:8765
```

Alternatives: VS Code **Live Server**, or the bundled `start_mac.command` / `start_windows.bat`.

## Project structure

```
index.html          — app: UI, astronomy, composition engine, audio playback
sample_map.json     — reference copy of the sample map (inline in index.html)
samples/
  piano/            — lead
  strings/          — pad (with loop points)
  bass/             — contrabass pizzicato
  harp/             — arpeggios
  percussion/       — timpani + wood click
```

Each sample is a single note at a measured pitch (`rootMidi`); the engine picks the nearest sample and repitches it.

## Credits

Instrument samples come from **[VSCO 2 Community Edition](https://versilian-studios.com/vsco-community/)** by Versilian Studios, released under **CC0 1.0** (public domain). The samples were trimmed, normalized, pitch-verified and encoded to MP3 for this project.
