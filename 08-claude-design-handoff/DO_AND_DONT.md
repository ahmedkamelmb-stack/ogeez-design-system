# DO and DON'T — for Claude Design

The constraint list. Keep this in scope while generating.

## Palette

✅ **DO** use the original Electric Green `#33EB05`, Ultramarine `#3349EB`, Epink `#E602BB` as the three signals. They are the brand's memory and voltage.
✅ **DO** use one signal per artifact in `house` context. Substrate carries the rest.
✅ **DO** treat the substrate (paper, ink, stone, slate, cream) as the page's main material.
✅ **DO** drop the signals entirely when an artifact reads better without them — the manifesto-as-document, business cards, festival covers all live in pure substrate.

❌ **DON'T** layer two or three signals on the same artifact in `house` context.
❌ **DON'T** tint signals to pastels. They're full-strength or absent.
❌ **DON'T** apply the house palette to client `oncamera-*` work. The on-camera palette is separate.
❌ **DON'T** invent additional brand colors. The five substrate tokens + three signals + per-context overlays cover every case.

## Typography

✅ **DO** use Modern Era for Latin (or system-ui as honest fallback).
✅ **DO** use Neue Frutiger Arabic or IBM Plex Sans Arabic for Arabic.
✅ **DO** match optical weight, not point size — Arabic typically sets 1–2 sizes larger than Latin at the same scale step.
✅ **DO** use the diamond ◆ as the bilingual structural divider.

❌ **DON'T** substitute Geist, Inter, Helvetica Now, or any other geometric-startup sans for Modern Era. Drop to system-ui instead.
❌ **DON'T** set Arabic smaller than Latin.
❌ **DON'T** put Arabic under Latin as a translation by default.
❌ **DON'T** force a bilingual layout when the idea is single-language native.

## Layout & whitespace

✅ **DO** start every artifact with mostly empty substrate. The work fills in.
✅ **DO** keep edge margins generous (96px on 1920px decks).
✅ **DO** target 60–70% substrate per slide.
✅ **DO** allow photos to bleed full-edge in section dividers (L3).
✅ **DO** use the diamond ◆, the underline, or the headline-itself as structural punctuation — not decorative dividers.

❌ **DON'T** add decorative lines, borders, frames, corner stamps, or "design ornament."
❌ **DON'T** add background gradients or patterns to substrate.
❌ **DON'T** stack four hierarchy levels on one slide.
❌ **DON'T** put the wordmark on every slide as headline-sized chrome. Footer-only, ~40px wide.

## Wordmark

✅ **DO** place the wordmark in: cover (top-left), footer (bottom-right), end-card (centered).
✅ **DO** keep the wordmark at one of three documented sizes.
✅ **DO** set the wordmark in `--color-fg` (ink in `house`, paper in `house-dark`, white in `film`).

❌ **DON'T** redraw, skew, stretch, drop-shadow, or recolor the wordmark.
❌ **DON'T** put the wordmark on slide 1 of a `client.status=repeat` deck (idea-first violates).
❌ **DON'T** use the mouth as headline. The wordmark is the public face.

## The mouth

✅ **DO** treat the mouth as a parametric technical asset (`data-state` × `data-treatment` × lip color).
✅ **DO** deploy the mouth sparingly — sign-offs, recruiting, internal docs, stings.
✅ **DO** preserve the fixed anatomy (magenta tooth, red tongue, white teeth, black void, airplane).

❌ **DON'T** use the mouth as a slide's primary headline.
❌ **DON'T** redraw the mouth or invent new states / treatments.
❌ **DON'T** change the magenta tooth to match the lip color.
❌ **DON'T** bleed the mouth off-edge as a default — only sparingly per the visual system.

## Photography

✅ **DO** select photography that reads warm-desaturated, sun-washed, observational, anti-stock.
✅ **DO** prefer real places, real light, faces often withheld.
✅ **DO** use the four mood references as register anchor.

❌ **DON'T** source from Shutterstock / iStock / Unsplash MENA packs.
❌ **DON'T** use ring-lit influencer-portrait aesthetic.
❌ **DON'T** apply heavy photo filters or color grades on top — the photo's own light is the point.
❌ **DON'T** use AI-generated images that look AI-generated. (AI images can ship when the brief invites AI as the medium and the image reads as deliberate.)

## Motion

✅ **DO** use only the three easings (`pull`, `hold`, `lift`) and six durations (80/200/320/640/1200/1600ms).
✅ **DO** build "the second of silence" into every reel as a structural choice.
✅ **DO** cut on causality, not on energy.

❌ **DON'T** use swooshes, whip-pans, or kinetic typography animations.
❌ **DON'T** type animations that aren't fade-in / type-on / bilingual-reveal.
❌ **DON'T** introduce arbitrary durations (e.g., 250ms, 400ms). Add a token first.
❌ **DON'T** use elastic bounces or typewriter effects — both un-OGeez.

## Voice / copy

✅ **DO** write in whichever language the idea is most native to.
✅ **DO** apply the 3-adjective defense test — every line must name three adjectives it's doing.
✅ **DO** absorb canon references into craft choices; never name-drop.

❌ **DON'T** use *full-service*, *content partner*, *end-to-end*, *award-winning* as opener, or *innovative / disruptive / iconic / epic / vibes*.
❌ **DON'T** translate to MSA when dialect would hit harder.
❌ **DON'T** write *"filmmaker-led commercial studio with festival credibility and a bilingual bench"* — retired with v4.

## The bar test

> Before any artifact ships, ask: *would this read at the bar where a Cairo film sits next to a film made anywhere else?* If it reads as regional, the artifact is wrong.

## Single most important DO and DON'T

✅ **DO**: one signal, one headline, one image, mostly empty.
❌ **DON'T**: substitute Geist for Modern Era. Drop to system-ui instead.

---

*See `CLAUDE_DESIGN_PROMPT.md` for the full prompt. See `ASSET_REFERENCES.md` for what files exist where.*
