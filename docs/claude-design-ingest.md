# Claude Design Ingest Notes

This repo is designed to work in two modes:

1. **GitHub-link mode** — give Claude Design the repository link.
2. **Paste mode** — paste files directly when Claude Design only accepts text.

## Paste order (V3)

If pasting:

1. `CLAUDE_DESIGN_PROMPT.md`
2. `docs/manifesto.md`
3. `BRIEF.md`
4. `README.md`
5. `tokens.css`
6. `docs/visual-guidelines-v3.md`
7. `docs/voice.md`
8. `docs/motion-guidelines.md`
9. `VALIDATION.md`

The manifesto is the spine. Read it first. Everything else is implementation.

## What Claude Design needs to know up front

- **Title:** OGeeZ V3
- **Spine:** the manifesto (`docs/manifesto.md`).
- **Positioning:** *Attention, not volume.*
- **Manifesto bookends:** *في مستوى. / عند المستوى، أو مرفوض.*
- **Philosophy:** look less designed, not more.
- **Architecture:** three-layer tokens (primitives → semantic → context-scoped via `data-context`).
- **Default context:** `house`.
- **Default deck posture:** depends on `client.status` (idea-first for repeat, 11-section for first-time).

## What's been retired (don't ingest these as authority)

- The V2 *filmmaker-led commercial studio with festival credibility and a bilingual bench* positioning sentence.
- The V2 *corporate precision + punk-zine energy* tension framing.
- The V2 *Electric Green / Ultramarine / Epink* house palette as default.
- The V2 *anti-AI crafted texture as deliverable* framing.
- The V2 *controlled chaos* voice rule.
- The V2 *the mouth speaks now / mouth as central deliverable* framing.

## What's preserved from V2

- Three-layer token model.
- 6 contexts (`house` / `house-dark` / `film` / `oncamera-corporate` / `oncamera-consumer` / `oncamera-heritage` / `house-print`).
- Parametric mouth SVG (technical asset, deployment demoted).
- Motion-as-first-class (timings, durations, mouth state machine, sting variants).
- 14 deck layouts (L1–L14).
- Bilingual typography parity (Modern Era + IBM Plex Sans Arabic, equal optical weight).
- Diamond ◆ as bilingual structural divider.
- 60+ icon system across 6 domains.
- 8 data-viz primitives.
- 9 social formats.
- Web spec (home / work / case study / about / hire / festival).
- 15+ production docs.
- WCAG AA tokens + Arabic line-heights + motion-reduce fallbacks.

## Heavy assets policy

The repo is text-first. Heavy private source assets (master logo files, brand identity master kit, font files, Brand Identity asset folder) live at `../Brand Identity/`. This repo carries the system logic, tokens, docs, and lightweight SVG/component proofs. When Claude Design needs a heavy asset, point it at the master kit path; do not paste large binary content.

---

*Read `docs/manifesto.md` first. Everything else hangs from it.*
