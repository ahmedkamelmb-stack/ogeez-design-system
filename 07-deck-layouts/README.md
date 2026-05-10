# Deck Layouts

The 14 canonical layouts. This folder ships **8 anchor HTML examples**; the rest follow the same register.

## The 14

| # | Layout | When | Anchor file |
|---|---|---|---|
| L1 | Cover | First-time client title slide | `L1-cover.html` |
| L2 | Headline + body | Standard content | (build from L9 register) |
| L3 | Section divider (full-bleed photo) | Section break with image | `L3-section-photo.html` |
| L4 | Section divider (mouth bleed-off-edge) | Sparingly | (build from L3 register) |
| L5 | Data slide (pastel ground) | Soft-ground charts | (build from L13 register) |
| L6 | Section divider (mouth + duotone) | Sparingly | (build from L3 register) |
| L7 | Section divider (photo-in-mouth-mask) | Sparingly | (build from L3 register) |
| L8 | Data slide (saturated) | Chart on color flood | (build from L13 register) |
| L9 | Image-right | Photo + text split | `L9-image-right.html` |
| **L10** | **Idea-first opener** | **Repeat-client deck slide 1** | `L10-idea-first.html` |
| **L11** | **Bilingual sibling headline** | **Arabic + ◆ + English at equal weight** | `L11-bilingual-headline.html` |
| L12 | Quote / talent attribution | Cast/crew shoutout, awards, press pulls | (build from L11 register) |
| L13 | Timeline / pipeline | Production phase grid | `L13-timeline.html` |
| L14 | Deliverables matrix | n×m grid | `L14-deliverables-matrix.html` |
| L_FILM | Festival cover (`film` context) | Mabeen / Halayeb / Timo / shorts | `L_film-festival-cover.html` |

## How to view

Open any `.html` file in a browser. Each one references `../01-tokens/tokens.css` and the mood-references images. The slides scale to 50% via CSS so they fit on a typical screen.

## Usage in Claude Design

These HTML files are the register anchors. Claude Design should:

1. Read the layout files alongside `01-tokens/tokens.css`.
2. Match the structure for the corresponding layout #.
3. Substitute content (headlines, photos, data) — never substitute tokens, type, or layout grid.
4. Honor the posture rule: `client.status=repeat` opens with L10 (no studio chrome on slide 1); `client.status=first_time` opens with L1.

## The single most important layout rule

> **Pick the layout from the brief, not the brief from the layout.** If you find yourself shaping the brief to fit a layout, the brief deserves a different layout.
