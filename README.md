# OGeeZ Studios — Design System

**v0.1.0** · 2026-04-27 · Designed for Claude Design ingest

---

## Read this first

OGeeZ Studios is a filmmaker-led commercial studio with festival credibility and a bilingual bench. Cairo + Riyadh. The visual identity is **loud, vibrant, expressive — and deliberately shape-shifting**. Corporate-precision and punk-zine in the same envelope. The tension is the product.

### The single most important rule

**On-camera palette ≠ house palette.**

The Electric-Green / Ultramarine / Epink system is **deck wrapping** — used for OGeeZ's own decks, social, stationery, recruiting, internal docs. It is NOT the on-camera color of OGeeZ film/commercial work for clients.

On-camera color is **client-tier-deterministic**:

| Tier | When | Token namespace |
|---|---|---|
| `oncamera.corporate` | Banks, government, B2B, institutional | Restrained, black + warm accent |
| `oncamera.consumer` | F&B, telco, retail, consumer pop | Saturation up, pattern-forward |
| `oncamera.heritage` | National days, anniversaries | Earth tones, art-direction-heavy |

Pick the right context BEFORE generating any artifact. The tokens.json `context` field is the switch — set it explicitly. **Default is `house`.**

---

## How Claude Design uses this repo

1. Read `tokens.json` — single source of truth for colors, type, spacing, mouth library, layouts.
2. Read `docs/visual-guidelines.md` — full visual canon. Read `docs/brand-voice-guidelines.md` for tone.
3. When generating: pick the **context** first (`house` / `oncamera.corporate` / `oncamera.consumer` / `oncamera.heritage`), then resolve tokens.
4. For deck/social/stationery artifacts: clone from `components/` HTML primitives. They demonstrate token usage in working markup.
5. Use the master assets in `assets/` — never redraw or AI-regenerate the logo or mouth.

---

## Brand naming (canonical)

| Surface | Form |
|---|---|
| English written form (default) | **OGeeZ Studios** |
| Spoken / casual | OGeez |
| Legal LLC mark | OGz Studios LLC |
| Arabic short | الشلة الأصلية |
| Arabic full legal | شركة الشلة الأصلية للانتاج الفني |
| Saudi CR | 1010891013 |

Same registered company in both English and Arabic. Not a sister brand.

---

## Repo structure

```
ogeez-design-system/
├── README.md                          ← you are here
├── BRIEF.md                           ← 1-page hand-off for Claude Design
├── tokens.json                        ← machine-readable design tokens
├── tokens.css                         ← CSS variable mirror
├── CHANGELOG.md
├── VALIDATION.md                      ← 4-artifact test set for v0.1
├── docs/
│   ├── visual-guidelines.md           ← full visual canon (v2.0)
│   ├── brand-voice-guidelines.md      ← voice & tone (v4)
│   └── on-camera-palettes.md          ← three client-tier specs
├── assets/
│   ├── logo/                          ← master EPS + PDF + PNG
│   ├── mouth/                         ← 12 color variants (PDF + EPS + PNG)
│   ├── fonts/Modern Era Family/       ← bundled font files
│   └── applications/                  ← reference PDFs (cards, letterhead, deck, sig)
├── components/                        ← HTML primitives (Claude Design clones these)
│   ├── deck-cover.html                ← L1
│   ├── deck-headline-body.html        ← L2
│   ├── deck-separator-mouth-bleed.html ← L4
│   ├── deck-separator-shadow.html     ← L6
│   ├── deck-data-pastel.html          ← L5
│   ├── social-square.html             ← IG post
│   ├── social-co-branding.html        ← OGZ × Partner
│   ├── business-card.html             ← stationery
│   └── email-signature.html           ← banner format
├── examples/                          ← rendered QA samples
└── scripts/
    ├── copy-master-assets.ps1         ← Windows: populate assets/ from ../Brand Identity/
    └── copy-master-assets.sh          ← macOS/Linux equivalent
```

---

## Setup (run once)

After cloning or copying this folder, populate the binary assets from the master Brand Identity kit:

**Windows (PowerShell):**
```powershell
cd "C:\Users\Kamel\Documents\Brain\agency\OGeeZ Design System\ogeez-design-system"
.\scripts\copy-master-assets.ps1
```

**macOS / Linux:**
```bash
cd "ogeez-design-system"
bash scripts/copy-master-assets.sh
```

The script copies logos, mouths, fonts, and reference applications from `../Brand Identity/` into `./assets/`. Re-run if the master kit gets updated.

---

## Quick do's & don'ts

**Do**
- Use the master files. They exist. Don't redraw.
- Treat the mouth as parametric: 12 colors × 5 treatment modes.
- Pair Arabic and English at equal optical weight (not equal point size).
- Hold the corporate-precision + punk-zine tension. Don't smooth it.
- Tune chart palettes to the slide background, not to a fixed deck palette.
- Set headlines big.
- Light photography in single saturated colors, not gels-everywhere.

**Don't**
- Tint primary colors to pastels.
- Skew, stretch, drop-shadow, or re-color the lockup.
- Redraw the mouth — color-shift the master asset, don't regenerate.
- Set Arabic smaller than English, or as translation underneath.
- Apply the house palette to client on-camera work.
- Generate mood-state mouths (Action!/Standby/Halloween) via prompt — they are rendered images only, no source files exist.
- Paint over the brand's strangeness. The strangeness is the asset.

---

## Open questions before v1.0

1. **Master swatch.** HEX values throughout are read off-screen from the condensed manual + master kit. For final print/environmental: request CMYK + Pantone from Chubby Studio (chubbystudio.com).
2. **Motion guidelines.** Not in master kit. Brief Ahmed before designing intros, animated lockups, or lower-thirds.
3. **Digital / responsive social spec.** PSD IG template exists; no documented spec for stories, reels, vertical formats, web. Build from observed pattern.

---

## Validation before shipping

Run the 4-artifact test in `VALIDATION.md` after any tokens edit:
1. House recruiting one-pager — must hit Electric Green at full strength
2. Bank Aljazira (corporate-tier) deck cover — must be muted black + restrained accent
3. Drinkle (consumer-tier) social tile — must be saturated, pattern-forward
4. Bilingual headline (Arabic + English) — must pair at equal optical weight

Fix tokens or README if any test fails — never patch at the prompt layer.

---

*Master Brand Identity kit lives in `../Brand Identity/`. This repo is the tokenized, machine-readable form for Claude Design ingest. Voice & tone canon lives in `docs/brand-voice-guidelines.md`. Any conflict between the docs and the master kit: master kit wins on visuals, voice docs win on copy.*

**Single most important rule: don't smooth the tension. It's the asset.**
