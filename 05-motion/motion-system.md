# Motion System

**Held. Observational. Anti-swagger.** Motion is first-class — for a filmmaker-led studio it has to be.

## The single most important rule

> **Every motion uses a token.** Never an arbitrary duration or curve. The "second of silence" is built into every reel as a structural choice — no swooshes, no whip-pans, no kinetic typography animations.

If a designer types `transition: 250ms ease-in-out`, that's a system violation. Use `transition: var(--motion-duration-default) var(--motion-ease-pull)`. The point of the system is consistency at the timing layer, not just the color layer.

## §1. Three easings

| Token | Cubic-bezier | Personality | Use for |
|---|---|---|---|
| `--motion-ease-pull` (default) | `(0.4, 0.0, 0.2, 1.0)` | Default smooth | Pull-back reveals, default UI, slide transitions, body fades |
| `--motion-ease-hold` | `(0.2, 0.0, 0.0, 1.0)` | Fast out, slow in | Emphasis appearances, headline reveals, end-card lockups |
| `--motion-ease-lift` | `(0.7, 0.0, 0.3, 1.0)` | Sharp both ends | Snap moves, match-cuts, transitions that need to LAND |

**Why three?** One per house pace. Pull = the pull-back-reveal corpus pattern (default). Hold = the held-beat / second-of-silence. Lift = the snap that needs to land.

## §2. Six durations (24fps base)

| Token | Duration | Frames @24fps | Use for |
|---|---|---|---|
| `--motion-duration-instant` | 80ms | 2 | Micro-feedback, button-press |
| `--motion-duration-quick` | 200ms | 5 | UI hover/focus, tooltip |
| `--motion-duration-default` | 320ms | 8 | Standard transition, modal open |
| `--motion-duration-emphasis` | 640ms | 15 | Emphasized appearance, hero reveal |
| `--motion-duration-cinematic` | 1200ms | 28 | Full beat, slide transition |
| `--motion-duration-pull-back` | 1600ms | 38 | Pull-back-reveal pacing |

**Rule:** if a duration isn't in this table, it's wrong. Add a token before adding an arbitrary value.

## §3. Mouth state machine

The mouth has 6 states (technical asset, deployed sparingly). Each is set via `data-state` on the SVG. **The mouth is never a headline; the wordmark is the public face.**

| State | Animation | Duration | Use |
|---|---|---|---|
| `resting` (default) | Closed mouth, sparkle still | 0 | Static logo placement |
| `shouting` | Three lines emit, staggered 80ms | 320ms (`hold`) | Brand-mark hits in stings, lockup reveals |
| `biting` | Airplane animates from frame-right into mouth | 640ms (`lift`) | Title cards, sting climaxes |
| `cycling` | Lip color cycles 12 colors, 100ms each | 1200ms (linear) | Section-divider stings — once per section max |
| `bleeding` | Mouth pans 30% past canvas edge | 1200ms (`pull`) | Hero entrances, full-bleed editorial |
| `trailing` | Three trail copies of lip silhouette | 640ms (`hold`) | Kinetic backgrounds (vertical social) |

States stack with treatments. **12 colors × 5 treatments × 6 states = 360 valid mouth variants** from one SVG source.

## §4. Sting variants — *OGeez Presents*

Four variants. Each picks a base then applies one bespoke parameter per project.

### 4.1 Festival (4s)
- **Context:** `[data-context="film"]`. Black ground.
- **Animation:** Single white mouth-mark fades in (640ms). Holds 2s. Title + Arabic title fade in below (320ms). Hold 1s. Cut to black.
- **Sound:** Silent. (Festival house policy — no studio score eats into the film's first scene.)
- **Bespoke parameter:** Color of the accent line. Per-film pick.

### 4.2 Theatrical (8s)
- **Context:** `[data-context="film"]` or `[data-context="house-dark"]`.
- **Animation:** Black ground. Mouth fades in (640ms). Color cycles through library (1200ms). Settles on chosen accent. Bites airplane (640ms). *OGeez Presents* + Arabic reveal (320ms). Hold 4s. Cross-fade.
- **Sound:** Commissioned score (Hashem Shaheen recommended).
- **Bespoke parameter:** Mouth settle color.

### 4.3 Streaming (3s)
- **Context:** `[data-context="house"]` or `[data-context="house-dark"]`.
- **Animation:** Color flood. Mouth shouts (320ms). Lockup reveals (320ms). Snap-out (80ms).
- **Sound:** Optional. Single rising note + impact.
- **Bespoke parameter:** Background flood color (any of the 12 mouth-library colors).

### 4.4 Social-trim (1.2s)
- **Context:** Any. Vertical 9:16.
- **Animation:** Mouth bites (640ms). Lockup snap-on (160ms). Hold (400ms).
- **Sound:** Two versions — sound-on (thump + shout) and sound-off (silent default for muted autoplay).
- **Bespoke parameter:** Mouth color skin.

### Per-film customization protocol
Each new project picks **one** base sting variant + **one** bespoke parameter. No more.

## §5. Slide transitions

Three transitions cover ~90% of usage. Resist adding more.

| Transition | Duration | Easing | Use |
|---|---|---|---|
| `pull-back` | 1200ms | `pull` | Cover → first content slide; section in-points |
| `match-cut` | 80ms | none | Before/after; era jumps; "same shape, different content" |
| `bleed-in` | 640ms | `hold` | Section dividers; high-impact entries |

## §6. Chyrons / lower-thirds

Two registers. Pick at production-brief stage, not edit-suite.

### Commercial chyron (`oncamera-consumer` + house)
- Color band, height 80px on 1080p.
- Modern Era Bold name + Regular role at 80% opacity.
- Brand emphasis underline (3px) under name.
- Bilingual variant: Arabic + ◆ + Latin in the band.
- Animation: bleed-in from left (320ms `hold`). Hold 4–6s. Bleed-out (200ms).

### Filmmaker chyron (`film` context)
- Single text line. Modern Era Light. White on black 30% scrim.
- No band. No underline. No animation (fade-in only, 200ms).
- Use: documentary, BTS, festival-bound, Sold Out interview-style.

## §7. End-cards

### `silent-hold`
- 1 full second of black-frame silence after final shot.
- No mark. No score. Just the held beat.
- Use: films, festival shorts.

### `studio-mark`
- Full lockup hold for 2–3 seconds.
- Background per context (paper for `house`, void for `film`/`house-dark`, signal flood for `oncamera-consumer`).
- Optional URL/social handle below lockup.
- Use: commercial reels, case-study videos, branded content.

## §8. Type animations

**Conservative.** Three permitted patterns:

1. **Fade-in / blur-in** — opacity 0 → 1 + filter blur(4px) → blur(0). 320ms `pull`.
2. **Type-on** — words appear sequentially (each word: 80ms staggered, opacity 0 → 1). Headline reveals only — never body copy.
3. **Bilingual reveal** — Arabic appears + diamond ◆ rotates 90° + Latin slides in from right. 640ms total.

**Banned:**
- Typewriter effect (cliché).
- Elastic bounce (un-OGeez).
- Color-cycle on type (mouth-only).
- Rotate without semantic reason.

## §9. Motion-reduce fallbacks

All durations resolve to 0ms when `prefers-reduced-motion: reduce`. The state machine still works (e.g., `state="biting"` shows the airplane in mouth — it just appears instantly).

## §10. Single most important motion rule

> **Held, observational, anti-swagger.** Cuts on causality, not on energy. Sound design carries what the cut withholds. Every motion uses a token.

---

*See `01-tokens/tokens.css` for the implementation. See `mouth-states.md` for the parametric mouth state machine. See `sting-variants.md` for the four-sting protocol.*
