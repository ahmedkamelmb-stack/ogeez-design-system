# Bilingual Typography

## Principle

Arabic and English are siblings. Neither language is a subtitle, decorative caption, or afterthought.

## Language posture (idea-native, V3)

The studio writes in whichever language the idea is most native to:
- **Egyptian** when the idea is Egyptian.
- **Saudi** when the idea is Saudi.
- **English** when the brief asked in English and the idea answered back in it.
- **MSA** only when somebody specifically asked.

Translation is not bilingual. Sibling sentences are.

This means a layout might be:
- **Egyptian-led** (Arabic primary, English supports if at all)
- **English-led** (English primary, Arabic supports if at all)
- **Twin-line** (both at equal optical weight, separated by ◆)
- **Single-language** (only one, the language native to the idea)

The layout follows the idea's native language, not a fixed bilingual template.

## Font Stack

Latin:

```css
--font-latin: "Modern Era", system-ui, -apple-system, "Segoe UI", Roboto, sans-serif;
```

Arabic:

```css
--font-arabic: "IBM Plex Sans Arabic", "Neue Frutiger Arabic", Tahoma, Arial, sans-serif;
```

V3 uses IBM Plex Sans Arabic by default because it can be bundled under SIL OFL. Neue Frutiger Arabic remains the fallback if licensing is approved (decision deferred to budget conversation).

## Optical Weight

Match optical weight, not point size.

- Latin Bold pairs with Arabic Bold.
- Latin Regular pairs with Arabic Regular.
- Arabic needs more line-height.
- Arabic should often be slightly larger or looser to feel optically equal.

## Line Height Tokens

- Latin tight: `1.0`
- Latin normal: `1.45`
- Arabic tight: `1.2`
- Arabic normal: `1.7`

## Layout Patterns

### Twin-Line

Use for covers and campaign platforms when both languages carry equally.

```text
On your terms.
◆
على كيفك.
```

The diamond ◆ is the bilingual structural divider — V3 standard. Use as inline punctuation when both languages appear together.

### Arabic-Led

Use when the idea is Arabic-native (KSA, Egypt, dialect-first scripts, cultural work). English can support but not dominate.

### English-Led

Use when the idea is English-native (international decks, non-Arab partners, B2B SaaS that landed in English). Arabic still appears where identity, dialogue, or place matters.

### Single-Language

The most common case. The studio writes in *one* language at a time, the language native to the idea. Don't force a sibling translation when the idea doesn't ask for it.

## Do Not

- Set Arabic smaller than English.
- Put Arabic under English as a translation by default.
- Force Arabic and English to have the same line breaks.
- Use MSA when dialect would hit harder.
- Google-translate and polish after.
- Force a twin-line layout when the idea is single-language native.

---

*Read [[manifesto]] ¶7 for the language posture in plain prose. Read [[voice]] for operational rules.*
