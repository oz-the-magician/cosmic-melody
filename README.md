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

### Four styles

The same sky can be heard in four musical languages. The Moon still picks the character and the element of the sign the timbre; the date's motif becomes the hook or the jazz head.

| Style | New Moon | Waxing | Full Moon | Waning | Form (60 s) |
|---|---|---|---|---|---|
| Classical | nocturne | scherzo 3/4 | march | elegy | five-part miniature (below) |
| Hip-hop | lo-fi, 80 BPM | jazz-hop, 92 | boom bap, 96 | soul, 84 | intro, verse, break, verse, outro |
| Electro 128 | deep house | trance | techno | melodic house | intro, build-up, drop, break, build-up, final drop — 32 bars at exactly 128 BPM |
| Jazz | ballad, 64 | jazz waltz 3/4, 108 | swing, 112 | modal, 96 | intro, head, solo, head out, coda |

Hip-hop: Rhodes seventh and ninth chords, swung drums, sub bass, the motif chopped on piano, vinyl crackle and a lo-fi filter. Electro: four-on-the-floor, sidechain pumping, filter build-ups, risers and drops, supersaw, plucks and arpeggios. Jazz: piano trio with rootless voicings, walking bass, swing ride or brushes, an improvised solo by piano, vibraphone or bass, chosen by the element.

Drums, synths, Rhodes and vibraphone are synthesized with the Web Audio API — no extra files, no licences. Piano and double bass come from the same CC0 VSCO samples. Notes are scheduled just in time, so playback stays light.

Each style has its own four ensembles; the rhythm section stays in the genre, the colours change:

| Style | Ensembles |
|---|---|
| Hip-hop | Rhodes · Orchestral (strings, harp) · Organ & soul · Vibes & 808 |
| Electro 128 | Synth · Synthwave · Ambient (no hard drums) · Orchestral trance (strings, horn) |
| Jazz | Trio · Vibes quartet · Organ trio · Big band (horn, trombone) |

### Four ensembles (Classical)

| Ensemble | Lead | Pad | Bass | Sparkle | Accents |
|---|---|---|---|---|---|
| Оркестр | upright piano | string ensemble | contrabass pizz. | harp | timpani, wood click |
| Звёздная пыль | flute | quiet organ | cello pizz. | glockenspiel | gong, triangle |
| Медь | French horn | tenor trombone | tuba | marimba | suspended cymbal, slit drum |
| Камерный | clarinet | cello & viola sections | bassoon | xylophone | timpani roll, slit drum |

Each phrase is fitted into the instrument's range as a whole, so melodies keep their shape. Only the selected ensemble is downloaded.

## Loop and epochs

The **↻ Loop** button repeats the minute seamlessly. While the melody plays, the screen travels through cosmic history — Big Bang, recombination, dark ages, first stars, galaxies, the peak of star formation, the birth of the Sun, Earth, life, humans — and ends on the chosen date, with a live counter of cosmic time.

Ensembles differ in manner as well as timbre: articulation, register, density, echoes and doublings change with each one.

## Poster

The **Poster** button draws a print-ready A4 poster (2480×3508 px, 300 dpi) of the sky behind the melody: the constellation of the Sun's sign highlighted in gold, the ecliptic, the Sun at its true position and the Moon in its real phase, the date, a line on how the sky set the music, and a QR code that opens the same date, style and ensemble. Links like `?d=1987-03-21T07:15&s=jazz&e=organ` open a specific melody.

## Languages

The interface follows the browser language — Russian, English or Czech (Slovak browsers get Czech, everything else English). A RU / EN / CS switch in the header overrides it and is remembered.

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

Star catalogue and constellation lines: [d3-celestial](https://github.com/ofrohn/d3-celestial) by Olaf Frohn (BSD 3-Clause, `data/SKY-LICENSE.txt`). QR codes: [qrcode-generator](https://github.com/kazuhikoarase/qrcode-generator) by Kazuhiko Arase (MIT, bundled in `lib/`).


Instrument samples come from **[VSCO 2 Community Edition](https://versilian-studios.com/vsco-community/)** by Versilian Studios, released under **CC0 1.0** (public domain). The samples were trimmed, normalized, pitch-verified and encoded to MP3 for this project.
