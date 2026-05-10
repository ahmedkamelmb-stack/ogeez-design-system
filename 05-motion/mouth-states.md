# Mouth State Machine

The parametric mouth is a technical asset deployed sparingly. Six states, five treatments, twelve lip colors. **360 variants from one SVG source.**

## The doctrine

The mouth is the studio's discipline mark — used in moments where personality is invited (recruiting, internal documents, sign-offs, stings). **It is not the studio's headline mark.** The wordmark is the public face. Read `01-tokens/palette-rules.md` and `03-grid-and-layout/visual-system.md` before deploying the mouth.

## Fixed anatomy (NEVER changes)

- Outer lip silhouette
- White teeth
- Black void
- Airplane silhouette
- Sparkle
- Magenta tooth (`#E602BB`)
- Red tongue (`#E33A1F`)
- Three shout-lines

The magenta tooth stays magenta even on the Epink mouth. The red tongue stays red. These are non-negotiable.

## The 12 lip colors

| Token | Hex |
|---|---|
| `green` | `#33EB05` |
| `black` | `#000000` |
| `orange` | `#F59A1F` |
| `epink` | `#E602BB` |
| `mint` | `#28D9A8` |
| `skyblue` | `#1FBDFF` |
| `olive` | `#C4B560` |
| `blue` | `#3349EB` |
| `yellow` | `#FFD500` |
| `coral` | `#F5BEB7` |
| `cream` | `#E8D6A0` |
| `grey` | `#BFBFBF` |

Set via CSS variable: `--mouth-lip: var(--color-primitive-mouth-green)` etc.

## The 6 states

Set via `data-state` attribute on the SVG.

### `resting` (default)
- Closed-position mouth.
- Sparkle still.
- Shout-lines visible but static.
- **Use for:** static logo placement (favicon, business card, deck footer, signature).

### `shouting`
- Three shout-lines emit, staggered by 80ms.
- Each line: `transform-origin: right center`, scaleX(0.5) → scaleX(1), opacity 0 → 1.
- Curve: `--motion-ease-hold`. Total duration: 320ms.
- **Use for:** brand-mark hits in motion stings, lockup reveals at slide ends.

### `biting`
- Airplane animates from frame-right (offscreen) → mouth interior → settles bitten.
- Curve: `--motion-ease-lift`. Total duration: 640ms.
- **Use for:** title cards, sting climaxes. **Use sparingly** — the bite carries weight only when the rest of the system is restrained.

### `cycling`
- Lip color cycles through all 12 mouth-library colors.
- Each color holds for 100ms (1200ms total). Linear easing.
- **Use for:** section-divider stings, scene transitions in motion decks. **Once per deck section max** — overuse breaks it.

### `bleeding`
- Mouth pans 30% past the canvas edge.
- Curve: `--motion-ease-pull`. Duration: 1200ms.
- **Use for:** hero entrances (cover slide → first content slide), full-bleed editorial moments.

### `trailing`
- Three motion-trail copies of the lip silhouette extend behind the mouth, fading.
- Curve: `--motion-ease-hold`. Duration: 640ms. Opacity: 0 → 0.4 → 0.
- **Use for:** kinetic backgrounds (WeTransfer, vertical social cover), suggesting speed/sound.

## The 5 treatments

Set via `data-treatment` attribute.

| Treatment | Effect |
|---|---|
| `flat` (default) | Plain lip + fixed accents. |
| `duotone-shadow` | Lip + offset shadow color (uses `--mouth-shadow-color`). |
| `motion-trail` | Three trailing silhouettes fading behind. |
| `bleed` | Mouth panned 30% past edge. |
| `photo-mask` | Mouth shape masks an image inside; image desaturated. |

## State + treatment combinatorics

States can stack with treatments:
- `state="shouting" treatment="duotone-shadow"` — shouting with offset color shadow.
- `state="cycling" treatment="bleed"` — color-cycling while panning past edge.
- `state="biting" treatment="motion-trail"` — biting with trail behind.

**12 lip colors × 5 treatments × 6 states = 360 valid variants** from one source file.

## Deployment rules

1. **Default is `resting` + `flat` + black lip.** Anything else needs a reason.
2. **Sparingly.** Once per artifact. The mouth is not wallpaper.
3. **Sub-surface, not headline.** It's a sign-off, a sticker, a footer mark, a recruiting accent. Never the slide's main type.
4. **In motion only when motion is the surface.** Static decks don't animate the mouth. Stings, transitions, vertical reels animate it.

## Source

The single SVG source lives at `06-components/parametric-mouth.svg`. It is parametric — the lip color is a CSS variable, the state is a `data-state` attribute, the treatment is a `data-treatment` attribute. **Do not duplicate this file across projects** — reference it, theme it via the variables.

---

*See `motion-system.md` §3 for the timing details. See `sting-variants.md` for how the mouth participates in the four sting variants.*
