# OGeez V3 — Design System

**v3.0.0** · 2026-05-10 · The restraint-aligned reset

---

## What's different in V3

V3 keeps V2's architecture and operationalizes the v5 brand reset on top of it. The V2 system was technically excellent — three-layer tokens, 14 deck layouts, 60+ icons, 8 data-viz primitives, motion as first-class, bilingual parity, accessibility, parametric mouth. **All of that carries forward.** What V3 changes is the *register*.

| V2 (2026-05-09) | V3 (2026-05-10) |
|---|---|
| Positioning: *filmmaker-led commercial studio with festival credibility and a bilingual bench* | **Attention, not volume.** Manifesto bookends: *في مستوى. / عند المستوى، أو مرفوض.* |
| Tension: corporate precision + punk-zine energy | Restraint over costume; *look less designed, not more* |
| House palette: Electric Green / Ultramarine / Epink at full strength | Fresh designer derivation pending — placeholders in tokens; designer brief in `docs/visual-guidelines-v3.md` |
| Mouth: "the mouth speaks now" — central V2 deliverable | Mouth library kept (technical asset), deployed *sparingly*, never as headline |
| Anti-AI crafted texture layer (grain/tape/paper/scanline) | Texture is opt-in, never default; surface should be *evidence the work was made*, not advertising for the studio |
| Voice doc: 16k+ chars (`voice-guidelines-v5.md`) | Thin pointer (~370 words) at `docs/voice.md` citing the manifesto by paragraph |
| "Controlled chaos" voice rule | Removed — contradicts v5 restraint posture |
| Tagline: *A straight face that makes you laugh.* | Sub-line, retained inside voice repertoire; primary positioning is **Attention, not volume.** |
| Mouth easing names: `shout` / `bite` / `pull` | Renamed: `pull` / `hold` / `lift`. V2 names aliased for component compatibility. |

V2's contradictions with the brand reset are reconciled by promoting the manifesto to the spine and demoting the visual costume to its proper place. The architecture survives intact.

---

## Read this first

The system has three documents that come before any token, component, or asset:

1. **`docs/manifesto.md`** — the brand's spine. Bilingual sibling. Read it once, in full.
2. **`docs/voice.md`** — operational pointer. ~370 words. Cites the manifesto by paragraph.
3. **`docs/visual-guidelines-v3.md`** — the visual canon. Constants/variables split.

Everything below those three is implementation.

---

## Three-layer architecture (unchanged from V2)

```
┌──────────────────────────────────────────────────────┐
│  LAYER 3 — APPLICATIONS                              │
│  (decks, social, stationery, web, motion stings,     │
│   production docs, festival bumpers, client skins)   │
├──────────────────────────────────────────────────────┤
│  LAYER 2 — COMPONENTS                                │
│  (parametric mouth SVG, type primitives, layout      │
│   primitives, icon system, motion primitives,        │
│   data-viz primitives, optional texture overlays)    │
├──────────────────────────────────────────────────────┤
│  LAYER 1 — TOKENS                                    │
│  (color, type, spacing, motion, radius, elevation,   │
│   context-skin, sub-brand-internal, accessibility)   │
└──────────────────────────────────────────────────────┘
```

Lower layers stable. Upper layers move.

---

## The 6 contexts

Pick the context BEFORE generating any artifact. The `data-context` attribute is the switch.

| Context              | Use for                                                                                                                | Visual signature                                                                                                               |     |
| -------------------- | ---------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------ | --- |
| `house` (default)    | OGeez-self decks, social, stationery, recruiting, internal, web                                                        | Restraint palette (designer-derived, pending).                                                                                 |     |
| `house-dark`         | Dark-grounded house surfaces — late-night reads, cinema-exhibitor                                                      | Inverted, same restraint logic                                                                                                 |     |
| `film`               | OGeez-as-filmmaker — Mabeen, Milliona, الشلة الأصلية, festival, theatrical. Surfaces under the *OGeez Presents* frame. | Black ground, white type, single accent at sting only. Austere. Per-film artwork bespoke under fixed wordmark (A24-precedent). |     |
| `oncamera-corporate` | Banks, government, B2B, institutional                                                                                  | Restrained black + warm taupe accent                                                                                           |     |
| `oncamera-consumer`  | F&B, telco, retail, consumer pop                                                                                       | Saturation up; client palette imported                                                                                         |     |
| `oncamera-heritage`  | National days, anniversaries, cultural                                                                                 | Earth tones; period-accurate                                                                                                   |     |
| `house-print`        | Print-bound (offset, uncoated, embroidery)                                                                             | CMYK + Pantone calibrated against final designer brief                                                                         |     |

Default: `house`. On-camera palette is not the house palette.

---

## The mouth library — kept, demoted

V2 made the mouth its central deliverable. V3 demotes it to a discipline mark used in moments where personality is invited (recruiting, internal, sign-offs, stickers) — never as headline or identifier of the studio's tone.

Technical asset preserved: parametric SVG at `assets/mouth/parametric.svg`. 12 lip colors × 5 treatments × 6 motion states = 360 valid variants from one source. **The technical capability stays; the deployment posture changes.** Fixed accents (magenta tooth, red tongue, white teeth, black void, black airplane) NEVER change.

The wordmark — not the mouth — is the public face of the studio.

---

## Brand naming

| Surface | Form |
|---|---|
| English written form (default) | **OGeez Studios** |
| Spoken / casual | OGeez |
| Legal LLC mark | OGZ Studios LLC |
| Arabic written form | أوچييز ستوديوز |
| Saudi CR | 1010891013 |

---

## Two postures (unchanged from V2)

Selected by `client.status`:

| `client.status = first_time` | `client.status = repeat` |
|---|---|
| 11-section template, sections 1–3 (About / Clients / Partners) compressed to a 3-line deck *footer* | **Idea-first.** Slide 1 = idea. Slide 2 = craft spine. Slide 3 = deliverables. Credentials = 3-line signature at close. |

Layout L10 (idea-first opener) handles repeat-client posture; layout L1 (cover) handles first-time.

---

## Repo structure

```
ogeez-design-system-v3/
├── README.md                       ← you are here
├── BRIEF.md                        ← 1-page distillation
├── CLAUDE_DESIGN_PROMPT.md         ← paste-first file for Claude Design
├── CHANGELOG.md
├── LICENSE.md
├── VALIDATION.md
├── package.json
├── .gitignore
├── tokens.css
├── tokens.js
├── tokens/
│   ├── primitives.json
│   ├── semantic.json
│   ├── motion.json
│   ├── grain.json
│   └── context-overlays.json
├── docs/
│   ├── manifesto.md                ← THE SPINE
│   ├── voice.md                    ← operational pointer
│   ├── register-matrix.md          ← brief-archetype → craft-move table
│   ├── positioning.md              ← *Attention, not volume.* explainer
│   ├── visual-guidelines-v3.md     ← V3 visual canon
│   ├── motion-guidelines.md
│   ├── film-context.md             ← *OGeez Presents* surface
│   ├── bilingual-typography.md
│   ├── icon-system.md
│   ├── data-viz.md
│   ├── claude-design-ingest.md
│   ├── accessibility.md
│   ├── sub-brands.md               ← Internal labels invisible to clients
│   └── SOURCES.md
├── assets/
│   ├── README.md
│   └── mouth/
│       └── parametric.svg
└── components/
    ├── README.md
    ├── index.html
    ├── deck-idea-first.html
    └── film-bumper-festival.html
```

---

## How Claude Design uses this repo

1. **Read `docs/manifesto.md` first.** Everything else is downstream.
2. **Read `docs/voice.md`.** Operational rules, ~370 words.
3. **Read `tokens/` JSON files.** Primitives separate from semantic.
4. **Read `docs/visual-guidelines-v3.md`.** Visual canon.
5. **Read `docs/motion-guidelines.md`.** Held, observational. Not swagger.
6. **When generating, pick `data-context` first.** Default `house`.
7. **For motion artifacts:** explicit `data-state`, `data-treatment`. Default `state=resting`, `treatment=flat`.
8. **For deck artifacts:** pick the posture by `client.status`.
9. **For grain/texture:** never default. Opt-in only when it's *evidence the work was made*.

---

## Do's & don'ts (V3)

**Do**
- Treat the manifesto as the spine. Cite it by paragraph in every voice decision.
- Hold the seam between commercial OGeez and filmmaker OGeez. The *OGeez Presents* surface (`docs/film-context.md`) is where the filmmaker register lives.
- Match Arabic and English at equal optical weight. Diamond ◆ is the bilingual structural divider.
- Treat the mouth as a technical parametric system; deploy sparingly.
- Pick the context (`data-context`) before generating anything.
- Pick the posture (`client.status`) for any deck.
- Use motion deliberately — every motion uses a token, never an arbitrary duration or curve.
- Set headlines big where they earn it; leave the page mostly empty by default.
- Apply the bar test: *would this read at the bar where a Cairo film sits next to a film made anywhere else?*

**Don't**
- Use *filmmaker-led commercial studio with festival credibility and a bilingual bench* — retired.
- Use *full-service*, *content partner*, *end-to-end*, *award-winning* as opener, named-canon references.
- Tint primary colors to pastels.
- Skew, stretch, drop-shadow, or re-color the lockup.
- Use the mouth as a headline mark.
- Set Arabic smaller than English, or as translation underneath.
- Apply the house palette to client on-camera work.
- Bolt grain onto commercial work to fake "made by hand."
- Use the film context (`[data-context="film"]`) for commercial work.
- Generate per-film bumpers as one-offs.
- Ship motion without motion-reduce fallbacks.
