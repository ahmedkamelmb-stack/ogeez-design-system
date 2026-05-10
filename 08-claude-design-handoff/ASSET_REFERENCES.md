# Asset References — for Claude Design

Where the actual files live. **Do not invent or substitute.** If an asset is missing, drop to the documented fallback (system-ui for Latin, IBM Plex Sans Arabic for Arabic) — never to Geist, Inter, or any geometric-startup sans.

## Tokens

| Asset | Path | Status |
|---|---|---|
| CSS variables (single source of truth) | `01-tokens/tokens.css` | Ships in this repo |
| JS export | `01-tokens/tokens.js` | Ships |
| Primitives JSON | `01-tokens/primitives.json` | Ships |
| Semantic JSON | `01-tokens/semantic.json` | Ships |
| Context overlays JSON | `01-tokens/context-overlays.json` | Ships |
| Motion JSON | `01-tokens/motion.json` | Ships |

## Typography

| Family | Source | Status |
|---|---|---|
| Modern Era (Latin) | License pending — file goes in `assets/fonts/` | Drop `.woff2` files when license is settled |
| Modern Era Mono (Latin mono) | License pending | Drop `.woff2` files when license is settled |
| Neue Frutiger Arabic | License pending — file goes in `assets/fonts/` | Drop `.woff2` files when license is settled |
| IBM Plex Sans Arabic | SIL OFL — can ship today | Drop `.woff2` files in `assets/fonts/` |

**Until fonts ship:** use the system-ui fallback. **Never** substitute Geist, Inter, Helvetica Now, or any other geometric sans. The waterfall in `02-typography/fallback-waterfall.md` is the honest degraded state.

## Logo / wordmark

| Mark | Source | Status |
|---|---|---|
| Wordmark — primary lockup | TBD: drop in `assets/logo/ogeez-wordmark.svg` | **MISSING — to be added.** Until then, reference the wordmark from the DEFAULT design system on claude.ai |
| Arabic lockup أوچييز ستوديوز | TBD: drop in `assets/logo/ogeez-wordmark-ar.svg` | **MISSING — to be added** |
| Mouth (parametric) | `06-components/parametric-mouth.svg` | Ships in this repo |

When generating wordmark placement, **use the SVG from `assets/logo/`. If missing, reference by name only and add a TODO note.** Do not redraw.

## Mood references (photography anchors)

| File | Subject | Use |
|---|---|---|
| `04-imagery/mood-references/01-bureaucratic-interior.png` | Empty Cairo office, sun rectangle | Section dividers, Mabeen-register pieces |
| `04-imagery/mood-references/02-cairo-corniche-dawn.png` | Nile dawn, fisherman silhouette | Cover slides for Cairo work |
| `04-imagery/mood-references/03-riyadh-modernist.png` | Brutalist KSA facade golden hour | Cover slides for KSA work |
| `04-imagery/mood-references/04-clapper-discipline.png` | Hand on clapperboard | Production docs, recruiting one-pager |

These are **mood references**, not deck-ready stock. Match the register (warm desaturated, sun-washed, anti-stock) when selecting real photography. See `04-imagery/photography-direction.md`.

If files are missing locally (sandbox proxy may have blocked download), URLs and download script live in `04-imagery/mood-references/MANIFEST.md`.

## Components

| Component | Path | Status |
|---|---|---|
| Parametric mouth (technical asset) | `06-components/parametric-mouth.svg` | Ships |

## Deck layouts (HTML examples)

| Layout | Path | Posture |
|---|---|---|
| L1 — first-time client cover | `07-deck-layouts/L1-cover.html` | `client.status=first_time` |
| L3 — section divider (full-bleed photo) | `07-deck-layouts/L3-section-photo.html` | Either |
| L9 — image right | `07-deck-layouts/L9-image-right.html` | Either |
| L10 — idea-first opener | `07-deck-layouts/L10-idea-first.html` | `client.status=repeat` |
| L11 — bilingual sibling headline | `07-deck-layouts/L11-bilingual-headline.html` | Either |
| L13 — production timeline | `07-deck-layouts/L13-timeline.html` | Either |
| L14 — deliverables matrix | `07-deck-layouts/L14-deliverables-matrix.html` | Either |
| L_FILM — festival cover | `07-deck-layouts/L_film-festival-cover.html` | `data-context="film"` |

These are anchors. Build the rest of the 14 layouts to match the register.

## Generated brand assets

| Asset | Path | Status |
|---|---|---|
| Mood imagery (4 stills, Higgsfield) | `04-imagery/mood-references/` | Generated 2026-05-10 |
| Brand bumper plates (3 video shots, Higgsfield) | `09-generated/bumper-plates/` | Generated 2026-05-10 |
| HeyGen brand-explainer video | `09-generated/heygen-explainer/` | Generated 2026-05-10 |

## What's pending

- **Real wordmark SVGs.** Drop in `assets/logo/`. Until then Claude Design uses the wordmark from the DEFAULT design system.
- **Modern Era license.** Drop `.woff2` files in `assets/fonts/`.
- **Neue Frutiger Arabic license.** Currently fall back to IBM Plex Sans Arabic.

These are the only things blocking a fully self-contained handoff. Everything else is here.

---

*See `CLAUDE_DESIGN_PROMPT.md` for the paste-first prompt. See `DO_AND_DONT.md` for constraint pairs.*
