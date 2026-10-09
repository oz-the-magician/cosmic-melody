# Cosmic Melody

**Turns a date into a 30-second piece of music.** The position of the Sun and the phase of the Moon on the chosen date set the key, mode, tempo and harmony. Real orchestral samples then play the result right in the browser.

> 🇷🇺 Генератор «Космическая мелодия даты»: дата → положение Солнца и фаза Луны → лад, темп и гармония → 30 секунд музыки на живых оркестровых сэмплах.

## How it works

| Sky parameter | Musical parameter |
|---|---|
| Sun's ecliptic longitude (zodiac sign) | Root note |
| Moon phase | Mode (one of 8); illumination colours the dynamics |
| Time of day | Length of the development section, and so the tempo (70–82 BPM) |
| Digits of the date | A four-note motif cell with its own rhythm — the seed of the whole piece |

The piece is a miniature in Beethoven's manner, *per aspera ad astra*: everything grows from the date's motif, and the seven epochs of the Universe become a compressed sonata journey from darkness to light.

1. **Big Bang** — the motif in fortissimo unison over a timpani stroke, held on a fermata.
2. **Recombination** — the theme as a question, piano: the motif and its sequence a step higher, over Alberti accompaniment.
3. **First stars** — the answer, closing on a half cadence with a 4–3 suspension.
4. **First galaxies** — development: the motif fragmented and sequenced upward while the bass falls, crescendo through the secondary dominant.
5. **Peak of star formation** — climax on a diminished seventh, tremolo, then a general pause.
6. **Dark energy** — subito pianissimo heartbeat on a dominant pedal, the motif inverted in the low register, growing out of the dark (after the bridge into the finale of the Fifth).
7. **Birth of the Sun** — apotheosis: the theme in major (a Picardy third even in minor modes) and a coda of hammer-blow V–I chords.

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
