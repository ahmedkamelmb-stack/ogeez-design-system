# OGeez Brand System

**v1.0** · 2026-05-10 · The clean cut. Optimized for Claude Design handoff.

---

## What this is

The single source of truth for how OGeez looks, sounds, and moves. Built to hand directly to Claude Design (or to a human designer) without the asset-substitution failures that broke v3.

**This repo supersedes** `../ogeez-design-system-v3/`. v3 is preserved for reference; nothing new ships from it.

---

## What changed from v3

v3 archived the original Electric Green / Ultramarine / Epink palette and replaced it with a placeholder muted-olive system, pending a designer pass. Claude Design then invented around the placeholder and the result read cheap. **This system reverses that decision.**

The architecture v3 nailed — three-layer tokens, six contexts, fourteen deck layouts, motion-as-first-class, parametric mouth, bilingual parity, accessibility — carries forward intact. **The palette comes back.** The restraint posture moves from "replace the palette" to "rule the deployment."

| v3 | v1 (this system) |
|---|---|
| Palette archived; placeholder muted-olive accents | **Restored.** Electric Green / Ultramarine / Epink return as the spine. |
| "Look less designed, not more" → applied to colors | **Applied to deployment density.** One signal accent per artifact in `house` context. Substrate carries the work. |
| Mood imagery: zero | Four Higgsfield-generated mood references in `04-imagery/mood-references/`. |
| Component examples: 2 HTML | 7+ HTML deck layouts under `07-deck-layouts/`. |
| Claude Design handoff: a single paste-prompt file | `08-claude-design-handoff/` — full handoff package: prompt, asset reference, DO/DON'T pairs, validation set. |
| No video deliverables | Sizzle bumper plates + HeyGen brand explainer in `09-generated/`. |

---

## How to read this repo

Read in order:

1. `00-spine/manifesto.md` — read in full, once. The brand's spine.
2. `00-spine/positioning.md` — *Attention, not volume.* The four-word line.
3. `00-spine/voice.md` — operational voice rules (~370 words).
4. `00-spine/register-matrix.md` — brief-archetype → craft-move lookup.
5. `01-tokens/palette-rules.md` — the deployment rules that reconcile the original palette with the v5 restraint posture. **This is the load-bearing document.**
6. `01-tokens/tokens.css` — the implementation.
7. `02-typography/bilingual-typography.md` — Modern Era + IBM Plex Sans Arabic, equal-weight rules.
8. `03-grid-and-layout/visual-system.md` — grid, hierarchy, whitespace, density.
9. `04-imagery/photography-direction.md` — how OGeez photographs and selects imagery, with mood references.
10. `05-motion/motion-system.md` — held, observational. Three easings, six durations, mouth state machine, sting variants.
11. `06-components/` — parametric mouth, icons, primitives.
12. `07-deck-layouts/` — the 14 canonical layouts.
13. `08-claude-design-handoff/CLAUDE_DESIGN_PROMPT.md` — paste this into Claude Design.

---

## The single most important rule

**Look less designed, not more.** Every page asks: *would this read at the bar?* If a design choice is doing decorative work, cut it.

The palette isn't decoration — it's signal. One signal per page. The substrate carries the work.

---

## Folder structure

```
ogeez-brand-system/
├── README.md                              ← you are here
├── BRIEF.md                               ← 1-page distillation
├── CHANGELOG.md
├── LICENSE.md
├── package.json
├── .gitignore
│
├── 00-spine/                              ← read first; brand DNA
│   ├── manifesto.md                       ← في مستوى. / عند المستوى، أو مرفوض.
│   ├── positioning.md                     ← Attention, not volume.
│   ├── voice.md                           ← operational voice
│   └── register-matrix.md                 ← brief → craft-move lookup
│
├── 01-tokens/                             ← single source of truth for values
│   ├── tokens.css                         ← CSS variables, three-layer model
│   ├── tokens.js                          ← JS export
│   ├── palette-rules.md                   ← deployment rules (load-bearing)
│   ├── primitives.json                    ← raw values
│   ├── semantic.json                      ← what components reference
│   ├── context-overlays.json              ← per-context mappings
│   └── motion.json                        ← timing + easing values
│
├── 02-typography/
│   ├── bilingual-typography.md            ← Latin + Arabic spec
│   ├── type-scale.md                      ← display → micro
│   └── fallback-waterfall.md              ← what Claude Design substitutes when fonts are missing
│
├── 03-grid-and-layout/
│   ├── visual-system.md                   ← grid, hierarchy, whitespace
│   ├── density-rules.md                   ← anti-crowd, air-first
│   └── do-and-dont.md                     ← visual DO/DON'T pairs
│
├── 04-imagery/
│   ├── photography-direction.md           ← how OGeez photographs
│   ├── mood-references/                   ← Higgsfield-generated film-still mood plates
│   │   ├── 01-bureaucratic-interior.png
│   │   ├── 02-cairo-corniche-dawn.png
│   │   ├── 03-riyadh-modernist.png
│   │   └── 04-clapper-discipline.png
│   └── stock-rejection.md                 ← what we never source from
│
├── 05-motion/
│   ├── motion-system.md                   ← three easings, six durations
│   ├── mouth-states.md                    ← parametric mouth state machine
│   └── sting-variants.md                  ← festival / theatrical / streaming / social
│
├── 06-components/
│   ├── parametric-mouth.svg               ← the technical asset
│   ├── primitives/                        ← base layout primitives
│   └── icon-system.md                     ← 60+ icon catalog
│
├── 07-deck-layouts/
│   ├── L1-cover.html                      ← first-time client cover
│   ├── L10-idea-first.html                ← repeat-client opener
│   ├── L11-bilingual-headline.html        ← Arabic ◆ English equal-weight
│   ├── L3-section-photo.html              ← full-bleed photo section break
│   ├── L9-image-right.html                ← photo + text split
│   ├── L13-timeline.html                  ← production phase grid
│   └── L14-deliverables-matrix.html       ← n×m grid
│
├── 08-claude-design-handoff/
│   ├── CLAUDE_DESIGN_PROMPT.md            ← paste this first
│   ├── ASSET_REFERENCES.md                ← what assets exist where
│   ├── DO_AND_DONT.md                     ← constraints
│   └── VALIDATION.md                      ← 8-artifact test set
│
├── 09-generated/
│   ├── bumper-plates/                     ← Higgsfield video plates for sizzle
│   └── heygen-explainer/                  ← brand explainer avatar video
│
└── assets/
    ├── logo/                              ← wordmark sources (placeholder; user uploads real)
    ├── fonts/placeholders/                ← font fallback notes
    └── README.md
```

---

## What's pending

- **Real wordmark SVGs.** This repo carries placeholders at `assets/logo/`. Drop the actual OGeez wordmark + Arabic lockup files in. Until then, Claude Design uses the wordmark from the DEFAULT design system on claude.ai.
- **Modern Era license.** Repo references the family by name. If license is settled, drop the `.woff2` files into `assets/fonts/`.
- **Neue Frutiger Arabic license decision.** Currently fall back to IBM Plex Sans Arabic (SIL OFL) which can ship.

These are the only things blocking a fully self-contained handoff. Everything else is here.

---

## Single most important V1 output

**Build the manifesto-as-document.** Single column, generous margins, warm paper-white background, ink-black body. Modern Era + Neue Frutiger Arabic at equal weight. No internal headers; numbered prose; light paragraph separation. One image — the Mabeen still — sized smaller than the eye expects, captioned plainly: *Frame from Mabeen / 2026.* Footer: *Attention, not volume.* + wordmark. Format: a printable PDF + a quiet HTML page on ogeez.com.

This is the test piece. Everything else hangs from it.

---

*Locked v1.0, 2026-05-10. v3 archived to `../ogeez-design-system-v3/`. v2 and v1 superseded.*
