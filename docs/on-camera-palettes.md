# On-Camera Palettes

When OGeeZ shoots commercial / film / branded work for a client, the on-screen color choice is **client-tier-deterministic**, not house-deterministic. The Electric-Green / Ultramarine / Epink system is for OGeeZ's own surfaces (decks, social, stationery). On-camera color follows the client.

This file documents the three tiers with concrete examples from shipped OGeeZ work.

---

## Tier 1 — Corporate / institutional

**Use when** the client is a bank, government entity, B2B platform, regulated industry, or any institutional brand where credibility outweighs energy.

**Palette principle:** restrained. Dominant black. Single warm accent. Earth-tone neutrals. No pop colors.

**Token namespace:** `oncamera.corporate.*`

**Anchor swatches** (approximate):
- Base: `#000000` (black)
- Accent (warm): `#7A6A55` (warm taupe)
- Neutral light: `#F5F1EA` (off-cream)
- Neutral dark: `#1F1B17` (espresso black)

**Shipped examples:**
- **Bank Aljazira PPM** (`agency/previous-work/aljazira-bank.md`) — six reels, all in this register.
- **NHC CEO Cityscape** (`agency/previous-work/nhc-cityscape-ceo.md`) — TED-grammar speech, paced and quiet.
- **Pure Group** (`agency/previous-work/pure-group.md`) — earnest mockumentary register.
- **Al Jazeera Capital** (`agency/previous-work/aljazeera-capital.md`) — comic mockumentary on serious subject.

**On-camera lighting:** practical light, dimmer key, single soft warm bounce. Talent in suit / business attire. Wide composed frames, slow camera moves. No sat-up grade.

**What to avoid:**
- Electric Green or Epink anywhere on-screen
- Saturated pop palettes
- Quick cuts or motion-trail moves
- Mouth-bleed-off-edge or co-branding × treatments (those are house surfaces)

---

## Tier 2 — Consumer / pop

**Use when** the client is F&B, telco, retail, fashion, FMCG, or any consumer brand competing for attention in a crowded category.

**Palette principle:** saturation up. Pattern-forward. Multiple primary colors allowed simultaneously. Color is a character.

**Token namespace:** `oncamera.consumer.*`

**Anchor swatches** (approximate, brand-substitutable):
- Primary: `#FF3D2E` (warm red)
- Secondary: `#FFD500` (yellow)
- Tertiary: `#1FBDFF` (sky blue)
- Accent: `#28D9A8` (mint)

These are *defaults* — for any specific consumer client, pull their actual brand palette and use that. The point is the *posture*, not the exact hex.

**Shipped examples:**
- **Drinkle** (`agency/previous-work/drinkle.md`) — saturated, "a little chaotic", bottle POV.
- **Sign Ice Cream** (`agency/previous-work/sign-icecream.md`) — pull-back-reveal pop.
- **Roshn Hope Core** (`agency/previous-work/roshn-month4.md`) — cast-to-camera mockumentary in pop register.
- **Daw Shopping** (`agency/previous-work/daw-shopping.md`) — Sultan archetype-coach, saturated.

**On-camera lighting:** colored gels welcome. Strong key + colored backlight. Music-video-grade frames acceptable. Quick cuts, kinetic camera.

**What to avoid:**
- Muted earth-tone treatment (that's heritage tier)
- Black-and-white (that's the BTS / documentary register, not consumer)
- Restrained single-accent grade (that's corporate)

---

## Tier 3 — Heritage / patriotic

**Use when** the brief is national day, anniversary, cultural moment, generational story, or any heritage-coded brand position.

**Palette principle:** earth tones. Art-direction-heavy. Period-accurate styling. The frame is dressed before it's lit.

**Token namespace:** `oncamera.heritage.*`

**Anchor swatches** (approximate):
- Sand: `#D4B890`
- Ochre: `#C28D34`
- Deep red: `#7A1F1F`
- Olive: `#6B6B3A`
- Ink: `#1A1410`

**Shipped examples:**
- **NHC National Day** (`agency/previous-work/nhc-natday.md`) — concrete heritage scene list (market, sewing, musician, horseman, family).
- **Zaka** (`agency/previous-work/zaka.md`) — falcon-POV match-cuts across Saudi history.
- **Flavor of Homeland** (`agency/previous-work/flavor-homeland.md`) — 24 SAR banknote POV through 8 hands; match-cut past/present.

**On-camera lighting:** golden hour, motivated practical light, natural fall-off. Silhouettes welcome. Match-cut past/present is the recurring craft move (#11 in voice guidelines).

**What to avoid:**
- Electric / neon palette
- Modern post-grade saturation
- Studio lighting that flattens period dressing

---

## How to use this in Claude Design

Set the project context BEFORE generating any artifact:

```js
// Pseudocode — adapt to Claude Design's actual context API
project.context = "oncamera.corporate";  // or .consumer, .heritage, or "house"
```

Or in the artifact HTML wrapper:

```html
<body data-context="oncamera-corporate">
  <!-- artifact content -->
</body>
```

The CSS variables in `tokens.css` switch automatically based on the `data-context` attribute. House tokens are not inherited by on-camera contexts and vice versa — by design.

---

## Decision tree

```
Is this artifact OGeeZ representing itself?
  YES → context = "house"
        Use --ogz-electric-green / --ogz-electric-ultramarine / --ogz-epink full strength.

  NO → It's OGeeZ's work for a client.
        ↓
        What's the client's category?
          Bank / government / B2B / institutional → context = "oncamera.corporate"
          F&B / telco / retail / consumer pop      → context = "oncamera.consumer"
          National day / anniversary / heritage    → context = "oncamera.heritage"
          Other / unsure                            → ask Ahmed before generating
```

---

## What "house" surfaces look like (for contrast)

| Surface | Context |
|---|---|
| OGeeZ recruiting one-pager | house |
| OGeeZ Instagram BTS post | house |
| OGeeZ business card | house |
| OGeeZ deck cover for any pitch | house |
| OGeeZ email signature | house |
| OGeeZ × Coca-Cola partnership announcement | house |
| Bank Aljazira PPM deck *visualizing the on-camera reel* | house wrapping, oncamera.corporate inside |
| Drinkle hero film stills shown in a deck | house wrapping, oncamera.consumer inside |

The deck wrapping is always house. The film stills inside the deck respect the on-camera tier of the work being shown.
