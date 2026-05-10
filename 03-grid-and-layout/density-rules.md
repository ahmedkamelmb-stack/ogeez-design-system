# Density Rules

The anti-crowd doctrine. Air-first.

## The principle

A slide that looks "underdesigned" by industry-default standards is the slide we want.

Industry-default = decorative dividers, inline icons, gradient backgrounds, corner stamps, three callouts, four type sizes.
OGeez-default = headline, body, footer. Three elements. White everywhere else.

## The math

A 1920×1080 slide has 2,073,600 pixels. If 60–70% of those pixels are substrate (paper or ink, no content), the slide reads as expensive. If less than 40% is substrate, the slide reads as cheap.

This is not a rigid metric — but it's the right intuition. **Mostly empty is the goal.**

## What gets cut

When in doubt about whether to keep an element, cut it. The element list to scan first:

- Decorative lines / borders / frames.
- Background gradients or patterns.
- Inline icons (next to a number, next to a name, next to a heading).
- Repeated headlines (h2 below h1 on the same slide).
- Quote-unquote callouts ("highlighted" boxes, lifted panels with no information density).
- Page numbers in cover slides.
- Wordmarks on every internal slide (footer-only, not headline).
- "We are X. We do Y." paired statements.
- Inline emoji.
- Three-bullet lists of three words each. (Either expand or write as prose.)

## What stays

- The headline.
- The body / supporting line.
- The image (if the slide has one).
- The footer chrome (single line).
- The signal (if the slide is the one earning the signal).

## The 30-second test

Before any slide ships, look at it for 30 seconds. Then ask: what could I cut and still keep the slide doing its job?

If the answer is anything — cut it.

## Examples

### A bad slide (industry-default)

```
[Logo top-left]
Above the fold: "OUR APPROACH"
H1: We Believe in Bold Storytelling
H2: Where craft meets impact
3 bullets:
  • Innovation
  • Authenticity
  • Excellence
[Decorative line]
"Innovation drives results" — pull-quote in box
[Wordmark bottom-right] [Date] [Page 4 of 22]
```

Five levels of hierarchy. Two ornaments. One pull-quote about itself. No information density.

### The same slide, redone

```
[blank top half]

H1, 8-col span: We open with the idea. Not with us.

[blank bottom half except footer]

[Wordmark]    Attention, not volume.    4
```

One headline. One footer. The slide says one thing. The slide is mostly empty. The slide reads at the bar.

## The exception: data slides

Data slides earn density. A bar chart with five bars + axis labels + title + source line = appropriate density. **The categories carry the multiplicity.**

Even on data slides:
- Maximum five categories without sub-grouping.
- Single chart per slide.
- Chart fills the slide's middle band; headline above; one source line below.
- No 3D effects. No background patterns behind the chart. No shadows on bars.

## The exception: timeline / pipeline slides

Production timelines (L13) have inherent multiplicity. Pre-pro / Production / Post / Delivery is four phases with sub-phases. **Density earns its place when the diagram is the information.**

Even here:
- Single timeline per slide.
- No background ornament.
- Phase labels in caption type, not display.
- One signal color marking the current phase or the critical path.

## Single most important rule

> **Underdesigned by industry standards = correctly designed by OGeez standards.** The work fills the slide; the slide doesn't fill itself.

---

*See `do-and-dont.md` for paired examples. See `01-tokens/palette-rules.md` for the color complement.*
