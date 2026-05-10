# Type Scale

The full canonical scale for both languages, paired with line-height.

## Latin (Modern Era)

| Token | Size | Line-height | Weight | Tracking | Use |
|---|---|---|---|---|---|
| `display` | 88px | 1.0 | 900 (Black) | -0.02em | Covers, manifesto opener |
| `h1`      | 60px | 1.15 | 700 (Bold) | -0.01em | Slide headlines |
| `h2`      | 40px | 1.15 | 700 (Bold) | -0.01em | Sub-heads, callouts |
| `h3`      | 28px | 1.2 | 700 (Bold) | 0 | Tertiary heads |
| `body-lg` | 20px | 1.45 | 400 (Regular) | 0 | Lead paragraphs |
| `body`    | 16px | 1.45 | 400 (Regular) | 0 | Default body |
| `caption` | 13px | 1.4 | 400 (Regular) | 0 | Footnotes |
| `micro`   | 11px | 1.3 | 500 (Medium) | 0.02em | Tags, posture-tags |

## Arabic (Neue Frutiger Arabic / IBM Plex Sans Arabic)

| Token | Size | Line-height | Weight | Use |
|---|---|---|---|---|
| `display` | 92px | 1.2 | 800 (Black-equivalent) | Covers, manifesto |
| `h1`      | 64px | 1.4 | 700 (Bold) | Slide headlines |
| `h2`      | 42px | 1.35 | 700 (Bold) | Sub-heads |
| `h3`      | 30px | 1.4 | 700 (Bold) | Tertiary heads |
| `body-lg` | 22px | 1.7 | 400 (Regular) | Lead paragraphs |
| `body`    | 18px | 1.7 | 400 (Regular) | Default body |
| `caption` | 14px | 1.55 | 400 (Regular) | Footnotes |
| `micro`   | 12px | 1.4 | 500 (Medium) | Tags |

Note that Arabic point sizes run 1–2pt larger than Latin at the same scale step. This isn't a luxury — it's how the optical weight matches.

## Vertical rhythm

The scale uses an 8pt baseline. Line-heights are computed to land headlines on the grid:

- 88px @ 1.0 = 88px line → 11 baseline units
- 60px @ 1.15 = 69px line → 8.6 baseline units (round up to 72 = 9 units in tight slides)
- 40px @ 1.15 = 46px line → ~6 units
- 16px @ 1.45 = 23.2px → ~3 units

For consistent rhythm, snap to 8pt multiples in deck layouts: paragraph spacing should be 16, 24, 32, 48, 64, 96, or 128px.

## Tracking (letterspacing)

Default tracking is **0** — Modern Era is well-spaced at native metrics.

The exceptions:

- **Display sizes (-0.02em).** At 88px and above, tighten slightly to keep the headline reading as one shape, not as letters.
- **H1/H2 (-0.01em).** Slight tighten.
- **Caps / micro (+0.02em).** Open the spacing of all-caps and micro-text by 2% — small all-caps need the air or they collapse.

## Line-length rules

- Body copy: 65–75 characters per line at body-lg, 45–55 at body. Above 80 = unreadable; below 35 = jagged.
- Display headlines: 4–7 words per line. If a headline runs 8+ words, break it or write a tighter version.
- Captions: max 2 lines. If the caption doesn't compress to 2 lines, it's not a caption — promote to body or move to footnote.

## Defaults

When in doubt:
- Headline = `h1` (60px) at Bold (700).
- Body = `body` (16px) at Regular (400).
- Footer / chrome = `caption` (13px) at Regular (400) in `--color-fg-muted`.

## Single most important rule

Headlines big where they earn it. Body small enough to disappear into reading.

---

*See `bilingual-typography.md` for Arabic + Latin pairing rules. See `fallback-waterfall.md` for missing-font behavior.*
