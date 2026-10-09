# Cosmic Melody

**Turns a date into a 30-second piece of music.** The position of the Sun and the phase of the Moon on the chosen date set the key, mode, tempo and harmony. Real orchestral samples then play the result right in the browser.

> 🇷🇺 Генератор «Космическая мелодия даты»: дата → положение Солнца и фаза Луны → лад, темп и гармония → 30 секунд музыки на живых оркестровых сэмплах.

## How it works

| Sky parameter | Musical parameter |
|---|---|
| Sun's ecliptic longitude (zodiac sign) | Root note |
| Moon phase | Mode (one of 8); illumination sets density and brightness |
| Time of day | Tempo (64–92 BPM) |
| Digits of the date | A 6-note motif with its own rhythm — the date's theme |

The piece follows seven epochs of the Universe in 30 seconds, and the orchestration tells that story: a Big Bang hit and low drone, first sparkles, the theme entering, bass and pulse with the galaxies, a climax an octave higher, the theme inverted in the dark-energy era, and a dominant-to-tonic cadence at the birth of the Sun. Chords move by smooth voice leading.

### Four ensembles

| Ensemble | Lead | Pad | Bass | Sparkle | Accents |
|---|---|---|---|---|---|
| Оркестр | upright piano | string ensemble | contrabass pizz. | harp | timpani, wood click |
| Звёздная пыль | flute | quiet organ | cello pizz. | glockenspiel | gong, triangle |
| Медь | French horn | tenor trombone | tuba | marimba | suspended cymbal, slit drum |
| Камерный | clarinet | cello & viola sections | bassoon | xylophone | timpani roll, slit drum |

Each phrase is fitted into the instrument's range as a whole, so melodies keep their shape. Only the selected ensemble is downloaded.

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
  piano/ strings/ bass/ harp/ percussion/   — Оркестр
  stardust/ brass/ chamber/                 — other ensembles, one folder per voice
```

Each sample is a single note at a measured pitch (`rootMidi`); the engine picks the nearest sample and repitches it.

## Credits

Instrument samples come from **[VSCO 2 Community Edition](https://versilian-studios.com/vsco-community/)** by Versilian Studios, released under **CC0 1.0** (public domain). The samples were trimmed, normalized, pitch-verified and encoded to MP3 for this project.
