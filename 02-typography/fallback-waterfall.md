# Font Fallback Waterfall

What Claude Design (and any rendering surface) does when the canonical fonts aren't available.

## The problem (lesson from v3)

Claude Design's "OGeeZ V3" output substituted **Geist** for Modern Era when no font file was present. Geist is a fine font for product UI; it is wrong for OGeez. The substitution made the brand read as a SaaS startup, not a film studio.

## The doctrine

When the canonical font is unavailable, the renderer must drop to **system-ui** (the OS-native sans), not to a "modern AI design tool default" like Geist or Inter.

System-ui will be:
- macOS / iOS → SF Pro
- Windows → Segoe UI
- Android → Roboto
- Linux → DejaVu Sans / Cantarell

These are all wrong for OGeez. But they are *honestly* wrong — they don't pretend to be the brand. Geist pretends. That's the failure mode.

## The waterfall (in stack order)

```css
--font-latin: "Modern Era", system-ui, -apple-system, "Segoe UI", Roboto, sans-serif;
```

The intent of this stack:
1. **`"Modern Era"`** — the canonical face. If loaded, used.
2. **`system-ui`** — the OS-native sans. The honest fallback.
3. **`-apple-system`** — explicit macOS for older browsers.
4. **`"Segoe UI"`** — explicit Windows.
5. **`Roboto`** — explicit Android.
6. **`sans-serif`** — final terminal fallback.

**There is no "Inter" in this stack. There is no "Geist" in this stack.** If Claude Design substitutes either, the waterfall has been violated.

## Arabic waterfall

```css
--font-arabic: "Neue Frutiger Arabic", "IBM Plex Sans Arabic", Tahoma, "Geeza Pro", Arial, sans-serif;
```

1. **`"Neue Frutiger Arabic"`** — primary if licensed.
2. **`"IBM Plex Sans Arabic"`** — secondary, SIL OFL, can ship.
3. **`Tahoma`** — Windows fallback (renders Arabic acceptably).
4. **`"Geeza Pro"`** — macOS Arabic fallback.
5. **`Arial`** — universal terminal fallback (renders Arabic but flat).

IBM Plex Sans Arabic is the operational primary in this repo because it's the highest-quality Arabic face that can ship under SIL OFL without a license decision. **Drop the IBM Plex Sans Arabic OTF/WOFF files into `assets/fonts/` to lock the system.**

## What Claude Design should do when no font files are present

1. Render the type with `system-ui` as the Latin face.
2. Render Arabic with `Tahoma` or whatever the OS provides.
3. **Note in the Claude Design handoff message that fonts are missing** — do not silently substitute Geist or Inter.
4. Wait for fonts to be added before locking the visual system.

## How to know the substitution failed

- The wordmark looks too "geometric / startup / SaaS."
- The Arabic looks like it was designed in 2008.
- The headlines feel "techy" instead of editorial.

These are signs that Geist or a Geist-equivalent has crept in. The fix is: load the canonical fonts, or accept the system-ui look until you can.

## Single most important rule

System fallback is the honest degraded state. Geist substitution is the dishonest one. **Never let Claude Design's preview fool the brand into looking startup-shaped.**

---

*Drop Modern Era and IBM Plex Sans Arabic font files into `assets/fonts/` to remove the waterfall risk entirely.*
