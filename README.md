# Cosmic Melody

**Turns a date into a one-minute piece of music.** The position of the Sun and the phase of the Moon on the chosen date set the key, mode, tempo and harmony. Real orchestral samples then play the result right in the browser.

> 🇷🇺 Генератор «Космическая мелодия даты»: дата → положение Солнца и фаза Луны → лад, темп и гармония → минута музыки на живых оркестровых сэмплах.

## How it works

| Sky parameter | Musical parameter |
|---|---|
| Sun's ecliptic longitude (zodiac sign) | Root note |
| Element of the sign (fire, earth, air, water) | Texture: offbeat drive, chorale, sparse high register, flowing arpeggios |
| Moon phase | Mode (one of 8) and character: nocturne, scherzo in 3/4, march or elegy |
| Time of day | Length of the development, and so the tempo |
| Digits of the date | A four-note motif cell with its own rhythm — the seed of the whole piece |

The piece is a one-minute miniature in five continuous parts. Everything grows from the date's motif, and the accompaniment flows through every boundary — only the light changes.

1. **Big Bang** — the motif in fortissimo unison with a fermata, or rising out of silence in the nocturne and elegy.
2. **Recombination and first stars** — the theme as an eight-phrase period: question ending on a half cadence, answer closing on the tonic, with one clear high point.
3. **First galaxies** — a lyrical second theme in a related key, sung by a different instrument.
4. **Peak of star formation** — development in canon (the bass answers in inversion), rising sequences and an accelerando into a climax on a diminished seventh; a general pause only in the march.
5. **Birth of the Sun** — the theme returns in full light (doubled an octave up in march and scherzo), then a coda: hammer-blow V–I chords, or a held chord in the nocturne and elegy.

The tempo map breathes (accelerando, ritardando), yet every piece lasts exactly 60 seconds.

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
