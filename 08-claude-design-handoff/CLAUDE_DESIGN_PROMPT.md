# Paste This Into Claude Design

You are building the **OGeez Brand System** — a complete design system for a Cairo + Riyadh film studio. Read this file first, fully. Then read the spine + tokens + visual system before generating anything.

## What this brand is

OGeez is a studio held to one bar — the bar where a Cairo film sits next to a film made anywhere else and the room cannot tell the difference, except the Cairo film has the better second of silence. **Same hand on the film and the campaign.** Bilingual: idea-native, neither language a translation of the other.

Client-facing positioning: **Attention, not volume.**
Manifesto bookends (internal): *في مستوى. / عند المستوى، أو مرفوض.*

## What broke last time, and why

The previous system you built (V3) substituted Geist for Modern Era, redrew the wordmark, replaced the original Electric Green / Ultramarine / Epink palette with placeholders, and produced output that read as a SaaS startup rather than a film studio.

This system is a clean cut. The original palette is restored. The wordmark is fixed. **You will not invent visuals from prose; you will use the assets in this repo as ground truth.**

## What you must read before generating anything

1. **`00-spine/manifesto.md`** — read in full, once. The brand's spine.
2. **`00-spine/positioning.md`** — *Attention, not volume.* (4 words.)
3. **`00-spine/voice.md`** — operational voice rules.
4. **`01-tokens/palette-rules.md`** — **THE LOAD-BEARING DOCUMENT.** Read this twice.
5. **`01-tokens/tokens.css`** — implementation. Use these variables, never hex strings inline.
6. **`02-typography/bilingual-typography.md`** — Modern Era + Neue Frutiger Arabic, equal-weight rules.
7. **`02-typography/fallback-waterfall.md`** — what to do when fonts are missing. **Do NOT substitute Geist or Inter under any circumstance.** Drop to system-ui.
8. **`03-grid-and-layout/visual-system.md`** — grid, hierarchy, whitespace.
9. **`03-grid-and-layout/do-and-dont.md`** — paired examples.
10. **`05-motion/motion-system.md`** — held, observational, anti-swagger.

## The rules you cannot break

### Rule 1: One signal per artifact in `house` context

The three signals — Electric Green `#33EB05`, Ultramarine `#3349EB`, Epink `#E602BB` — are the brand's voltage. They are **scarce, deliberate, never decorative.** One per artifact in `house`. Substrate (paper / ink / stone / slate / cream) carries the rest.

If you find yourself using two signals on a slide, **cut one**. If you find yourself using three, cut two. Exception: data-viz where each signal maps to a meaningful category, and the per-film accent in `film` context (one pick per film).

### Rule 2: Substrate is paper + ink + neutrals

Default `house` background = `#0A0A0A` (ink, near-black). Default body = `#FAF7F2` (paper, warm white). Most of every page is substrate. Margins are generous (96px on a 1920px deck). Whitespace is load-bearing.

**Do not** introduce gradient backgrounds, decorative borders, corner stamps, or chrome ornaments. The grid is invisible; the rhythm is the design.

### Rule 3: Modern Era for Latin. IBM Plex Sans Arabic (or Neue Frutiger Arabic) for Arabic

Use the font stack in `tokens.css` exactly. **If Modern Era is unavailable, the renderer drops to `system-ui`, not to Geist or Inter.** The waterfall is the honest fallback.

Arabic and English at equal optical weight. Arabic line-heights run 1–2 sizes larger than Latin to match optical weight. Diamond ◆ is the bilingual structural divider.

### Rule 4: The wordmark is the public face. The mouth is a discipline mark

The OGeez wordmark identifies the studio. The parametric mouth is a sign-off, a sticker, a recruiting accent — sparingly used. **Never the slide's main type.** The mouth has fixed anatomy (magenta tooth, red tongue, white teeth, black void, airplane silhouette) that NEVER changes with the lip color.

### Rule 5: Six contexts, picked deliberately

Pick the context **before** generating anything. Set `data-context` on the artifact root.

- `house` (default) — OGeez-self decks, social, stationery, recruiting.
- `house-dark` — dark-grounded house surfaces.
- `film` — *OGeez Presents* — Mabeen, Milliona, الشلة الأصلية, festival, theatrical. Austere. Black ground, white type. **A24-precedent: bespoke per-film artwork under fixed wordmark.**
- `oncamera-corporate` — banks, government, B2B. Restrained black + warm taupe. Never house signals.
- `oncamera-consumer` — F&B, telco, retail. Saturation up; client palette imported.
- `oncamera-heritage` — national days, anniversaries, cultural. Earth tones, period-accurate.

The on-camera palette is **not** the house palette. House palette wraps the studio's own surfaces. Client work uses the client tier.

### Rule 6: Two postures for any deck

Selected by `client.status`:

- **`first_time`** → 11-section template (L1 cover). About / Clients / Partners compressed to a 3-line footer.
- **`repeat`** → idea-first (L10). Slide 1 = the idea. One line. One image. **No studio chrome on slide 1.** No wordmark, no positioning line, no page number.

### Rule 7: Motion is held, observational, anti-swagger

Three easings (`pull`, `hold`, `lift`). Six durations (80, 200, 320, 640, 1200, 1600ms). **No swooshes. No whip-pans. No kinetic typography.** Cuts on causality, not on energy. Sound design carries what the cut withholds.

### Rule 8: Grain / texture is opt-in only

Never default in any context. Use only when it's evidence the work was made — never as polish to look "made-by-hand."

### Rule 9: The bar test

Before any artifact ships, ask: *would this read at the bar where a Cairo film sits next to a film made anywhere else?* If it reads as regional, the artifact is wrong.

## Required components

Build the system covering:

- **14 deck layouts.** L1 (cover, first-time), L2 (headline + body), L3 (full-bleed photo divider), L4 (mouth bleed-off-edge — sparingly), L5 (data, pastel ground), L6 (mouth + duotone shadow — sparingly), L7 (photo-in-mouth-mask — sparingly), L8 (data, saturated), L9 (image-right), L10 (idea-first opener — repeat client), L11 (bilingual sibling headline), L12 (quote / talent attribution), L13 (timeline / pipeline), L14 (deliverables matrix).
- **Social.** Square (1:1), portrait (4:5), story (9:16), reels/TikTok (9:16), LinkedIn carousel, YouTube thumbnail, Snapchat first-frame, WeTransfer cover.
- **Stationery.** Business card, letterhead, email signature.
- **Web.** Home (single-film mode + reel-grid mode), work index, case study, about, hire, festival/awards.
- **Bumpers.** Festival 4s, theatrical 8s, streaming 3s, social-trim 1.2s.
- **Chyrons.** Commercial (color band), filmmaker (single text line, no band).
- **Production docs.** Treatment, casting brief, deliverables matrix, call sheets, MSA, NDA, location release, festival entry, rate card.
- **Icons.** 60+ across production, locations, roles, status, files, navigation, social.
- **Data-viz.** Bar, line, area, stacked, donut, timeline, pipeline, region map.

## The validation set (8 artifacts)

After building, generate these 8 artifacts. If any one fails the bar test, fix the system, not the artifact:

1. **The manifesto-as-document** (`house`, full). PDF + a quiet HTML page on ogeez.com. Single column, generous margins, paper-white background, ink-black body. One image (Mabeen still) sized smaller than the eye expects, captioned plainly. Footer: *Attention, not volume.* + wordmark.
2. **House recruiting one-pager** (`house`). Paper + Ink. One signal at the call-to-action. *Apply at ogeez.studio.*
3. **Bank Aljazira deck cover** (`oncamera-corporate`). Restrained black + warm taupe. Bilingual headline, both languages at equal optical weight. House signals retired.
4. **Drinkle social tile** (`oncamera-consumer`). Saturation up; client palette imported; one OGeez signal at most as a wink.
5. **Bilingual headline slide** (`house`, L11). Arabic + ◆ + English at equal optical weight.
6. **Mabeen festival submission cover** (`film`, L_FILM). Austere black ground, white type, *OGeez Presents*. Zero signals.
7. **Idea-first deck cover** (`house`, L10, `client.status=repeat`). Half-and-half: idea on the left, image on the right. **No studio chrome on slide 1.**
8. **Vertical reels first-frame** (`house`, 9:16). Safe top/bottom zones honored. Mouth in `trailing` state if the brief invites it; otherwise quiet.

## Single most important rule

> **Look less designed, not more.** Every page asks: *would this read at the bar?* If a design choice is doing decorative work, cut it.

## Single most important output

Build **the manifesto-as-document** first. PDF + ogeez.com HTML page. The test piece. Everything else hangs from it.

---

*Read `01-tokens/palette-rules.md` for the deployment doctrine. Read `03-grid-and-layout/do-and-dont.md` for paired visual examples. Read `02-typography/fallback-waterfall.md` for what NOT to substitute.*
