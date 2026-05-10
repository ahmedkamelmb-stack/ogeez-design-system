# Accessibility

## Baseline

V3 targets WCAG AA.

- Body text contrast: `4.5:1`.
- Large text contrast: `3:1`.
- Interactive touch targets: at least `44px`.
- Focus ring: ink (`#0A0A0A`) against bright fields, paper (`#FAF7F2`) against dark fields. (V3 replaces the V2 Electric Green focus ring with the restraint palette equivalents.)

## Motion

All motion must respect `prefers-reduced-motion`.

When reduced motion is requested:

- Animations resolve to `0ms`.
- Mouth states still resolve visually.
- The `biting` state shows the airplane already in-mouth.
- The `cycling` state resolves to the final selected color.

## Arabic And RTL

- Arabic content uses `dir="rtl"`.
- Do not reverse punctuation manually.
- Arabic line-height is intentionally larger than Latin.
- Avoid tight containers around Arabic display type.

## Contrast Watchpoints

Saturated colors with white are often poor for small type. The V3 restraint palette defaults to high-contrast pairings (ink on paper, paper on ink) that pass WCAG AA without measurement effort.

Archived V2 palette (Electric Green, Ultramarine, Epink) is high-impact and should never appear in body text — but if a legacy reference is unavoidable, run measured contrast and pair only with white or near-black, never both.

## Validation

Run the eight artifacts in `VALIDATION.md` and inspect:

- Text overflow.
- Arabic clipping.
- Motion-reduce fallback.
- First-frame safe zones on 9:16.
- Contrast for small captions.

