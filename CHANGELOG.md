# Changelog

All notable changes to the OGeeZ Studios Design System.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [0.1.1] — 2026-04-27

Asset population, parametric SVG, and mapping fix.

### Added

- **All binary assets populated** via `scripts/copy-master-assets.sh` (run on session sandbox):
  - `assets/logo/{pdf,eps,png}/` — 1 master PDF + 8 EPS + 6 PNG variants
  - `assets/mouth/{pdf,eps,png}/` — 1 master PDF + 13 EPS + 12 PNG (sequential, see fix below)
  - `assets/fonts/Modern Era Family/` — 4 TTF weights extracted from the master ZIP
  - `assets/applications/` — 5 reference PDFs/PPTX (presentation, business cards, letterhead, signature)
  - `docs/visual-guidelines.md` + `docs/brand-voice-guidelines.md` — copied from `agency/templates/`
- **SVG conversions:**
  - `assets/mouth/svg/Mouths-01..12.svg` — 12 sequential SVG conversions of mouth PDF pages
  - `assets/logo/svg/logo-{on-white,on-black,on-black-outline,on-green,on-magenta,one-color-black}.svg` + `mouth-standalone-on-white.svg` — 7 logo SVGs
  - `assets/mouth/svg/mouth-parametric.svg` — single template using `currentColor` for lip + shout-lines; magenta tooth, red tongue, white teeth, black void stay literal
  - `assets/mouth/svg/mouth-01..12-baked.svg` — 12 color-baked variants for environments that can't honor `currentColor` (PowerPoint embed, etc.)
- `scripts/generate-parametric-mouths.sh` + `.ps1` — regenerate the 12 baked SVGs from the parametric template
- `examples/2026-04-27-mouth-library/contact-sheet.png` — visual proof of all 12 colors with anatomy intact
- `examples/2026-04-27-parametric-test/parametric-{green,ultramarine,epink,yellow}.png` — parametric system validation renders

### Fixed

- **Mouth PNG sequence mismatch.** The Illustrator artboards were numbered 1, 3-13 (skipping 2). Earlier draft of `copy-master-assets.{sh,ps1}` did a literal rename `Artboard N@10x.png → Mouths-NN.png`, which left a gap and misaligned PNGs against the EPS/PDF order. Both scripts now do a two-stage rename mapping `Artboard 1` → `Mouths-01.png`, `Artboard 3` → `Mouths-02.png`, …, `Artboard 13` → `Mouths-12.png`. Verified visually: `Mouths-02.png` = Black, `Mouths-04.png` = Epink, `Mouths-08.png` = Ultramarine — matches the master Mouths PDF page order.
- `components/deck-cover.html` updated to use the parametric SVG via `<object>` + CSS color inheritance (was: PNG `<img>`).

### Notes

- The parametric mouth has 4 lip-color paths that pick up `currentColor`. Magenta tooth stays magenta even on the Epink lip (the fixed-accent rule, mechanically enforced in the SVG).
- Sandbox-rendered contact sheet confirms the system works end-to-end.

---

## [0.1.0] — 2026-04-27

Initial public version. Tokenized design system extracted from the master Brand Identity kit (Chubby Studio, Oct 2023).

### Added

- `tokens.json` — machine-readable design tokens with namespaces:
  - `context` — house / oncamera.corporate / oncamera.consumer / oncamera.heritage
  - `color.house` — primary palette (Electric Green, Electric Ultramarine, Epink, Black, White)
  - `color.house-secondary` — 8 mouth-color extensions
  - `color.oncamera.*` — three client-tier specs
  - `color.chart` — bar-chart palettes per slide background
  - `mouth` — 12-color library + 5 treatment modes + fixed anatomy spec
  - `logo` — 8 master file pointers + clear-space rule
  - `typography` — Modern Era + Neue Frutiger Arabic + 8-step type scale
  - `spacing` — 8-point spatial system + deck-specific values
  - `grid` — deck (12-col, 16:9) + stationery (A4, business card)
  - `layouts` — 9 canonical deck layouts
  - `creative-moves` — 5 recurring patterns (bleed-off-edge, duotone-shadow, motion-trail, photo-mask, co-branding ×)
- `tokens.css` — CSS variable mirror with `[data-context="*"]` scoped overrides
- `README.md` — entry point with on-camera-vs-house rule front-and-center
- `BRIEF.md` — 1-page distillation for Claude Design
- `docs/on-camera-palettes.md` — three-tier client spec with shipped-work examples
- `docs/SOURCES.md` — pointer to canonical vault docs
- 9 HTML component primitives:
  - `deck-cover.html` (L1)
  - `deck-headline-body.html` (L2)
  - `deck-separator-mouth-bleed.html` (L4)
  - `deck-separator-shadow.html` (L6)
  - `deck-data-pastel.html` (L5)
  - `social-square.html`
  - `social-co-branding.html` (× mark)
  - `business-card.html`
  - `email-signature.html`
  - `index.html` (component preview gallery)
- `scripts/copy-master-assets.ps1` (Windows) and `.sh` (macOS/Linux) — populate assets/ from `../Brand Identity/`
- `VALIDATION.md` — 4-artifact test set
- `.gitignore`

### Known issues / open questions (carried into v1.0)

- HEX values are read off-screen from the master kit. Master swatch (CMYK + Pantone) from Chubby Studio not yet incorporated.
- Motion guidelines are not in the master kit. Animation, intro stings, lower-thirds = greenfield.
- Digital / responsive social spec (stories, reels, vertical formats, web) not documented.
- Mood-state mouth lockups (Action!/Standby/Halloween/etc.) exist as rendered images only — no source files. Confirmed by Ahmed 2026-04-27. Do not generate new ones via AI/prompt.
- Cairolog ↔ OGeeZ entity-map question still open.

---

## [Unreleased] / Roadmap

### v0.2.0 — planned
- Convert mouth EPS → SVG with `--ogz-mouth-color` CSS variable wired to lip path fill.
- Convert logo EPS → SVG variants, web-optimized.
- Add Arabic stationery component primitives (RTL letterhead, RTL business card).
- Bundle Neue Frutiger Arabic if licensed (currently external).

### v1.0.0 — gating criteria
- Master swatch from Chubby Studio incorporated (exact CMYK + Pantone + HEX).
- Motion guidelines drafted with Ahmed.
- Validation set passing on 4 of 4 artifacts.
- At least one production deck shipped using only this system.
