# Sting Variants

Four logo stings, each with one bespoke parameter per project. Read `motion-system.md` §4 first.

## The four variants

| Variant | Duration | Surface | Sound | Bespoke parameter |
|---|---|---|---|---|
| **Festival** | 4s | `film` (black ground) | Silent | Accent line color (per-film) |
| **Theatrical** | 8s | `film` / `house-dark` | Commissioned score | Mouth settle color |
| **Streaming** | 3s | `house` / `house-dark` | Optional rising note + impact | Background flood color |
| **Social-trim** | 1.2s | Any (vertical 9:16) | Two versions: sound-on / silent | Mouth color skin |

## Per-film customization protocol

For every new project the studio releases under *OGeez Presents*:

1. Pick **one** sting variant.
2. Pick **one** bespoke parameter for that variant.
3. Document the pick in the project's treatment doc at delivery time.

That's it. No more. The variant + the parameter are the only knobs. Everything else is the system.

## Why this matters

The system supports per-film identity without per-film redesign. Mabeen gets a black-mouth festival sting; Halayeb might get an ultramarine-line festival sting; Milliona gets a yellow-flood streaming sting. **Each pick reads as that film's signature; all read as OGeez.**

## What the bespoke parameter is NOT

- Not a chance to redesign the mouth.
- Not a chance to recolor the magenta tooth or red tongue.
- Not a chance to substitute a different mark.
- Not a chance to re-time the duration.
- Not a chance to add a treatment that doesn't exist in the system.

The parameter is a single value pick — usually a color — within the bounds the system already defined.

## Festival (4s) — detailed spec

```
0.0s   black frame (silence)
0.0s → 0.64s   white mouth-mark fades in at center (--motion-ease-hold)
0.64s → 2.64s  hold (silent)
2.64s → 2.96s  title + Arabic title fade in below mouth (--motion-duration-default)
2.96s → 3.96s  hold
3.96s → 4.0s   cut to black
```

**Rationale for silence:** festival house policy. No studio score eats into the film's first scene. The Mabeen director, Halayeb director, Timo director get the first second of audio.

**Bespoke parameter:** color of the accent line drawn under the title. Defaults to white. Per-film options (typically pulled from the film's color story): Electric Green, Ultramarine, Epink, or one of the 12 mouth-library tones.

## Theatrical (8s) — detailed spec

```
0.0s   black frame
0.0s → 0.64s   mouth fades in (--motion-ease-hold)
0.64s → 1.84s  mouth color cycles through library (1200ms, linear)
1.84s → 2.48s  mouth bites airplane (--motion-ease-lift)
2.48s → 2.8s   "OGeez Presents" + Arabic title reveal (--motion-duration-default)
2.8s → 6.8s   hold (with score)
6.8s → 8.0s   cross-fade to film
```

**Sound:** commissioned score from Hashem Shaheen (recommended; 25k EGP estimated for original 8s cue + social-trim variant).

**Bespoke parameter:** color the mouth settles on at end of cycle. Black for tonally darker pieces (Mabeen), Ultramarine for thought-leader-register films, Epink for comedy-leaning premieres.

## Streaming (3s) — detailed spec

```
0.0s   color flood frame
0.0s → 0.32s   mouth shouts (--motion-ease-hold)
0.32s → 0.64s  lockup reveals (--motion-duration-default)
0.64s → 2.92s  hold
2.92s → 3.0s   snap-out (--motion-duration-instant)
```

**Sound:** optional. If present, single rising note + impact at 0s; muted by default for sound-off platforms.

**Bespoke parameter:** background color flood. Any of the 12 mouth-library colors. Allows per-project skin without re-rendering the underlying motion.

## Social-trim (1.2s) — detailed spec

```
0.0s   white or black frame, vertical 9:16
0.0s → 0.64s   mouth bites airplane (--motion-ease-lift)
0.64s → 0.8s   lockup snap-on (--motion-duration-quick)
0.8s → 1.2s   hold
```

**Sound:** two versions exported per render — sound-on (thump + shout) and sound-off (default for TikTok/Reels muted autoplay).

**Bespoke parameter:** mouth color skin (any of 12). Festival shorts get black-mouth; consumer-pop gets bright color.

## Open questions

1. **Theatrical sting score commission.** Recommended composer: Hashem Shaheen. Budget ~25k EGP for original 8s cue + 1.2s social-trim variant. Pending Ahmed.
2. **Lottie export pipeline.** Per-sting Lottie files need to be generated from a master After Effects file. AE file pending.
3. **Per-film bespoke parameter governance.** Who approves the parameter pick per project? Defaults to Ahmed (ECD) until written otherwise.
4. **Sound design library.** Stings reference "single thump," "rising note," "shout impact" — needs a sound-effect library. Recommend Splice Pro + custom OGeez stinger pack.

---

*See `motion-system.md` for the broader motion doctrine. See `mouth-states.md` for the parametric mouth state machine.*
