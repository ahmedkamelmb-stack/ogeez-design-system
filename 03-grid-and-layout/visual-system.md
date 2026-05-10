# Visual System — Grid, Hierarchy, Whitespace

The spatial complement to the palette doctrine. If `palette-rules.md` says **one signal per artifact**, this document says **air carries the rest**.

## The single most important rule

**Look less designed, not more.** Every page asks: *would this read at the bar?* If a design choice is doing decorative work, cut it.

## Grid

### Decks (1920 × 1080)

- 12 columns
- 24px gutter
- 96px edge margins (left + right)
- 96px top margin, 48px bottom margin
- Baseline: 8pt

A 12-column grid at 1920px wide gives column widths of ~136px with 24px gutters. Most layouts use 1, 2, or 3 grid spans:
- **3-col span** = ~432px. Good for footers, eyebrows, captions.
- **6-col span** = ~888px. Half-page for split layouts.
- **8-col span** = ~1184px. Most headlines and body.
- **12-col span** = full width. Display, full-bleed photos.

### Vertical / Social (1080 × 1920)

- Single column, 48px edge margins.
- Safe top zone: 220px (avoids notch / status bar / "follow" button on TikTok).
- Safe bottom zone: 320px (avoids caption bar, like/share buttons).
- Headline target: 600px tall × 980px wide centered in the safe zone.

### Print (custom per piece)

- A4: 12-column, 16mm margins, 24mm bottom (footer).
- US Letter: 12-column, 0.75in margins.

## Hierarchy

Three levels per artifact, no more:

1. **The headline.** One line. Big where it earns the slide; otherwise normal-sized.
2. **The body / supporting line.** One paragraph or one sub-line.
3. **The chrome.** Footer, posture tag, page number, attribution.

If the slide has four levels, the slide is wrong. Cut a level.

## Whitespace doctrine

White space is not "negative" — it's the slide's main material. The thing the slide is mostly *made of*.

Rules:

- **Default to mostly empty.** A slide with one headline + one image + footer is not "underdesigned." It's the right amount of design.
- **Margins generous to the point of looking expensive.** 96px edge margins on a 1920px deck is the default. Tighten only when the content earns it.
- **One image per page. One headline per slide. One refusal per page.** (Refusal = the rule the slide enforces — for example, "we don't do X" stated once, not three times.)
- **The grid is invisible; the rhythm is the design.** Don't draw guidelines on the slide.

## Density rules

If you find yourself adding decorative elements to fill space, the slide doesn't need them — it needs less content.

| Density tier | What it looks like | When |
|---|---|---|
| **Air-first (default)** | Headline + footer. Lots of white. | 80% of slides. |
| **Half-and-half** | Image left, text right (or inverse). | Section dividers, idea-first openers. |
| **Three-zone** | Headline + supporting visual + footer/data. | Data slides, deliverables matrix. |
| **Full-bleed photo** | Photo edge-to-edge, headline overlaid OR captioned below. | Section dividers, opener slides. |

**Banned:**
- Four-zone layouts. (If you need four zones, you need two slides.)
- Cards-within-cards. (If a card holds another card, you don't need either.)
- Decorative dividers (lines, dots, frames). The grid does the dividing.
- Background gradients. Substrate is flat or photographic.
- Multiple call-outs on a single slide.

## Wordmark placement

The wordmark lives in one of three places, never anywhere else:

1. **Cover slide** (first-time clients only): top-left, 12% from top, ~80px wide.
2. **Footer** (all slides): bottom-right, 32px from edges, ~40px wide. With *Attention, not volume.* lockup at left.
3. **End-card / sign-off**: centered, ~120px wide, with caption below.

The wordmark is **never**:
- Centered on a content slide.
- In a corner watermark on every slide.
- Larger than the headline.
- Tinted, recolored, drop-shadowed, or stretched.

## Image rules

- One image per page. (If you need two images, you need two pages — or a single composite shot.)
- Photo treatment: warm desaturated, sun-washed, anti-stock. See `04-imagery/photography-direction.md`.
- Captions plain: small, `--color-fg-muted`, sans-serif, 13px.
- No drop-shadow on photos. No rounded corners (radius-md = 4px max for inset thumbnails only). No frames.
- Photos can bleed to slide edge. Bleed is preferred for section dividers.

## Footer / chrome

Every slide carries a thin chrome line at the bottom. **Three elements maximum:**

```
[Wordmark]    Attention, not volume.    [Slide n / N]
```

- Left: wordmark mark only (no caption text).
- Center: the positioning line. 13px caption-grey.
- Right: page number. 13px caption-grey.

No other elements. No client logo on every slide (it lives on the cover). No date stamp. No file name.

## Cover layouts

Two postures:

### `client.status = repeat` → idea-first (L10)

Slide 1 = the idea. One line. One image. **No studio chrome on slide 1.** No wordmark, no positioning line, no page number — just the idea.

Slide 2 = the craft spine.
Slide 3 = the deliverables matrix.
Closing slide = 3-line credentials signature.

### `client.status = first_time` → 11-section template (L1)

11-section structure: About / Clients / Partners / Overview / Objective / Content Plan / Brand Essence / Tone / Direction / Pillars / Photos. About / Clients / Partners compressed into a 3-line deck *footer*, not a separate set of slides.

Cover (L1) shows: studio wordmark, positioning line, brief title, client name. That's it.

## Single most important spatial rule

> **Margins generous, body restrained, one image, one headline, one signal.** If a slide needs more than that, it needs to become two slides.

---

*See `density-rules.md` for the anti-density discipline. See `do-and-dont.md` for visual examples.*
