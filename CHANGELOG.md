# Changelog

All notable changes to OGeez Brand System.

## [1.0.0] — 2026-05-10

### The clean cut

Fresh repo replacing `ogeez-design-system-v3/`. Same architecture (three-layer tokens, six contexts, fourteen deck layouts, motion-as-first-class, parametric mouth, bilingual parity, accessibility) with three corrections:

1. **Original palette restored.** Electric Green `#33EB05` / Ultramarine `#3349EB` / Epink `#E602BB` are back as the brand's spine. v3's archived-and-replaced placeholder system reverted.

2. **Deployment rules layered on top of the palette.** New load-bearing document `01-tokens/palette-rules.md` codifies "one signal per artifact in `house` context; substrate carries the rest." This reconciles the v5 manifesto's restraint posture with the original palette.

3. **Imagery, motion video, and Claude Design handoff added.** `04-imagery/mood-references/` ships four Higgsfield-generated film-still mood plates. `09-generated/bumper-plates/` ships brand sizzle plates. `09-generated/heygen-explainer/` ships the avatar-led brand explainer. `08-claude-design-handoff/` packages prompt + asset references + DO/DON'T + 8-artifact validation set.

### Verbal layer (ported clean from v3)

- `00-spine/manifesto.md` — locked v5, in-full bilingual.
- `00-spine/positioning.md` — *Attention, not volume.*
- `00-spine/voice.md` — operational rules.
- `00-spine/register-matrix.md` — brief-archetype → craft-move table.

### Visual layer (corrected from v3)

- `01-tokens/tokens.css` — original palette restored, single-signal `--color-signal` slot added.
- `01-tokens/palette-rules.md` — **NEW** load-bearing deployment doctrine.
- `01-tokens/primitives.json` — full primitives, original palette.
- `02-typography/bilingual-typography.md` — Modern Era + IBM Plex Sans Arabic with explicit DO/DON'T.
- `02-typography/type-scale.md` — full canonical scale.
- `02-typography/fallback-waterfall.md` — **NEW** documents what NOT to substitute (Geist, Inter banned).
- `03-grid-and-layout/visual-system.md` — grid, hierarchy, whitespace.
- `03-grid-and-layout/density-rules.md` — anti-crowd, air-first.
- `03-grid-and-layout/do-and-dont.md` — paired visual examples.

### Imagery (new)

- `04-imagery/photography-direction.md` — register, lighting, composition rules.
- `04-imagery/stock-rejection.md` — what we never source from.
- `04-imagery/mood-references/` — 4 Higgsfield-generated film-still plates (Cairo bureaucratic interior / Cairo Corniche dawn / Riyadh modernist / clapper discipline).
- `04-imagery/mood-references/MANIFEST.md` + `download.ps1` for users to fetch the plates if not committed.

### Motion (ported clean)

- `05-motion/motion-system.md` — three easings, six durations.
- `05-motion/mouth-states.md` — parametric state machine.
- `05-motion/sting-variants.md` — festival / theatrical / streaming / social.

### Components

- `06-components/parametric-mouth.svg` — ported from v3.

### Deck layouts (8 anchors instead of 2)

- `07-deck-layouts/L1-cover.html` — first-time client cover.
- `07-deck-layouts/L3-section-photo.html` — full-bleed photo divider.
- `07-deck-layouts/L9-image-right.html` — half-and-half image-right.
- `07-deck-layouts/L10-idea-first.html` — repeat-client opener.
- `07-deck-layouts/L11-bilingual-headline.html` — Arabic ◆ English equal-weight.
- `07-deck-layouts/L13-timeline.html` — production timeline.
- `07-deck-layouts/L14-deliverables-matrix.html` — n×m grid.
- `07-deck-layouts/L_film-festival-cover.html` — austere `film` context cover.

### Claude Design handoff (new package)

- `08-claude-design-handoff/CLAUDE_DESIGN_PROMPT.md` — paste-first prompt.
- `08-claude-design-handoff/ASSET_REFERENCES.md` — what files exist where.
- `08-claude-design-handoff/DO_AND_DONT.md` — constraint list.
- `08-claude-design-handoff/VALIDATION.md` — 8-artifact test set.

### Generated assets

- `09-generated/bumper-plates/` — Higgsfield video plates (3 shots, 5–6s each).
- `09-generated/heygen-explainer/` — HeyGen avatar-led brand explainer (~60s).

### Architectural decisions

- **Original palette stays.** v3's archive-and-replace was wrong; the palette wasn't the problem, the deployment density was.
- **Substrate doctrine.** Paper + ink + neutrals carry the work. Signals are punctuation.
- **Mouth demoted but preserved.** Technical asset, sparingly deployed; wordmark is the public face.
- **Idea-first wins on slide 1.** No studio chrome on `client.status=repeat` opener.
- **System-ui is the honest font fallback.** Never Geist or Inter.

### What's pending

- Real wordmark SVGs (drop in `assets/logo/`).
- Modern Era license (drop `.woff2` in `assets/fonts/`).
- Neue Frutiger Arabic license decision.

These are the only things blocking a fully self-contained handoff.

### Supersedes

- `ogeez-design-system-v3/` (2026-05-10) — archived, kept for reference.
- `ogeez-design-system-v2/` (2026-05-09) — superseded.
- `ogeez-design-system/` (2026-05-08) — superseded.

---

## [0.x.x] — Earlier versions

See `ogeez-design-system-v3/CHANGELOG.md` and `ogeez-design-system-v2/CHANGELOG.md` for the predecessor history.
