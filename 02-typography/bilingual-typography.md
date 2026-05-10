# Bilingual Typography

## Principle

Arabic and English are siblings. Neither language is a subtitle, decorative caption, or afterthought.

## Language posture (idea-native)

The studio writes in whichever language the idea is most native to:
- **Egyptian** when the idea is Egyptian.
- **Saudi** when the idea is Saudi.
- **English** when the brief asked in English and the idea answered back in it.
- **MSA** only when somebody specifically asked.

Translation is not bilingual. Sibling sentences are.

A layout can be:
- **Egyptian-led** (Arabic primary, English supports if at all).
- **English-led** (English primary, Arabic supports if at all).
- **Twin-line** (both at equal optical weight, separated by ◆).
- **Single-language** (only one — the language native to the idea).

The layout follows the idea's native language, not a fixed bilingual template.

## Type families

**Latin (primary):** Modern Era.
**Latin (mono):** Modern Era Mono.
**Arabic (primary):** Neue Frutiger Arabic.
**Arabic (fallback, ships if Frutiger unlicensed):** IBM Plex Sans Arabic (SIL OFL — can be bundled).

## Font stack (CSS)

```css
--font-latin:        "Modern Era", system-ui, -apple-system, "Segoe UI", Roboto, sans-serif;
--font-latin-mono:   "Modern Era Mono", "SF Mono", Menlo, Consolas, monospace;
--font-arabic:       "Neue Frutiger Arabic", "IBM Plex Sans Arabic", Tahoma, "Geeza Pro", Arial, sans-serif;
```

Note: when Modern Era is not loaded (Claude Design preview, no license bundled), the system fallback `system-ui` carries. **Do not substitute Geist, Inter, Helvetica Now, or any other geometric sans.** The waterfall must drop to system-ui directly. See `fallback-waterfall.md`.

## Optical weight

Match optical weight, not point size.

- Latin Bold pairs with Arabic Bold.
- Latin Regular pairs with Arabic Regular.
- Arabic needs more line-height than Latin at the same point size.
- Arabic should often be set slightly larger (or with looser leading) to read at equal optical weight.

## Type scale

| Token | Size | Latin LH | Arabic LH | Use |
|---|---|---|---|---|
| `display` | 88px | 1.0 | 1.2 | Cover headlines, manifesto opener |
| `h1`      | 60px | 1.15 | 1.4 | Slide headlines, section opens |
| `h2`      | 40px | 1.15 | 1.35 | Sub-heads, callouts |
| `h3`      | 28px | 1.2 | 1.4 | Tertiary heads, large body |
| `body-lg` | 20px | 1.45 | 1.7 | Lead paragraphs |
| `body`    | 16px | 1.45 | 1.7 | Default body |
| `caption` | 13px | 1.4 | 1.55 | Footnotes, attributions |
| `micro`   | 11px | 1.3 | 1.4 | Legal, tags, posture-tags |

## Layout patterns

### Twin-line

Use for covers and campaign platforms when both languages carry equally.

```
On your terms.
◆
على كيفك.
```

The diamond ◆ is the bilingual structural divider. Use as inline punctuation when both languages appear together. The diamond is `var(--color-emphasis)` — it inherits the page's emphasis color, not the signal.

### Arabic-led

Use when the idea is Arabic-native (KSA, Egypt, dialect-first scripts, cultural work). English can support but not dominate.

### English-led

Use when the idea is English-native (international decks, non-Arab partners, B2B SaaS that landed in English). Arabic still appears where identity, dialogue, or place matters.

### Single-language

The most common case. The studio writes in *one* language at a time, the language native to the idea. **Don't force a sibling translation when the idea doesn't ask for it.**

## DO

- ✅ Set Arabic at equal optical weight to Latin.
- ✅ Use the diamond ◆ as the bilingual structural divider when both languages appear inline.
- ✅ Drop the bilingual treatment entirely when the idea is single-language native.
- ✅ Test every type pair at three sizes before locking it (display / body / caption).
- ✅ Honor Arabic line-heights (always larger than Latin at the same point).
- ✅ Use Modern Era at Black weight for display, Bold for h1/h2, Regular for body.
- ✅ Use Neue Frutiger Arabic at corresponding optical weights — Frutiger Bold pairs Latin Bold.

## DO NOT

- ❌ Set Arabic smaller than English.
- ❌ Put Arabic under English as a translation by default.
- ❌ Force Arabic and English to share line breaks.
- ❌ Use MSA when dialect would hit harder.
- ❌ Google-translate and polish after.
- ❌ Force a twin-line layout when the idea is single-language native.
- ❌ Substitute Geist, Inter, Helvetica Now, or any geometric sans for Modern Era. **System-ui fallback is the correct degraded state.**
- ❌ Compress Arabic letterforms to match a Latin x-height — match the x-height with point size, not by squashing.

## Single most important rule

Optical weight, not point size. The eye reads weight; the system measures size. If the Arabic *looks* lighter than the Latin at the same point — bump the Arabic up.

---

*Read `fallback-waterfall.md` for what Claude Design substitutes when fonts are missing. Read `00-spine/manifesto.md` ¶7 for the language posture in plain prose.*
