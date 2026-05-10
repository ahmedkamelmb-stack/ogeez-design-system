# Components

Reusable visual primitives. Currently ships:

## Parametric mouth

**File:** `parametric-mouth.svg`

The technical asset. 12 lip colors × 5 treatments × 6 states = 360 valid variants from this one source.

**How to use:**
1. Embed the SVG in HTML or CSS.
2. Set `--mouth-lip` to one of the 12 mouth-library tokens.
3. Set `data-state` to one of: `resting`, `shouting`, `biting`, `cycling`, `bleeding`, `trailing`.
4. Set `data-treatment` to one of: `flat`, `duotone-shadow`, `motion-trail`, `bleed`, `photo-mask`.

```html
<svg class="ogz-mouth" data-state="resting" data-treatment="flat" style="--mouth-lip: var(--color-primitive-mouth-black);">
  <!-- inline mouth shape -->
</svg>
```

**Read first:** `../05-motion/mouth-states.md` for the state machine. `../05-motion/sting-variants.md` for the four sting variants.

**Deployment posture:** sparingly. The mouth is a discipline mark, not a headline. The wordmark is the public face.

## What's pending

- Icon system catalog (~60+ icons across production / locations / roles / status / files / navigation / social).
- Layout primitives (grid container, slide container, section divider primitive).
- Bilingual headline primitive (the diamond ◆ structural divider in a reusable component).

These ship in v1.1.
