# Validation — 4-artifact test set

Run this test set after any tokens edit, any new component, or any AI-assisted output. If any artifact fails, **fix the tokens or the README — never patch at the prompt layer**. Prompt-level patching means the system isn't real.

---

## Artifact 1 — House recruiting one-pager

**Brief:** "Generate a recruiting one-pager for OGeeZ Studios announcing a search for a Senior Producer in Riyadh. Single A4 page. Bilingual."

**Pass criteria:**
- ✅ Background uses **OGZ Electric Green at full strength** (`#33EB05`-equivalent, no tint).
- ✅ Wordmark or mouth visible at brand scale.
- ✅ Headline in Modern Era Black or ExtraBold, mixed case, large.
- ✅ Arabic text at equal optical weight to English (not smaller, not as a footnote).
- ✅ No prohibited phrases ("full-service", "content partner", "end-to-end", "innovative" used as opener, "award-winning" as opener).
- ✅ One emoji maximum or none.

**Fail signals:**
- ❌ Pastel green or 60% tint on the flood
- ❌ Arabic appearing as translation underneath English in smaller type
- ❌ Stock-corporate "join our team" register

**If this fails:** check `tokens.css` `--ogz-electric-green` is hex-correct; check that `[data-context="house"]` is being applied; check the README has the on-camera-vs-house rule visible.

---

## Artifact 2 — Bank Aljazira (corporate-tier) deck cover

**Brief:** "Generate a deck cover for a Bank Aljazira PPM. Project name: 'Bank Aljazira — Q3 PPM'. Subhead: 'Six reels for Q3 release'."

**Pass criteria:**
- ✅ Background is **muted black or near-black** (not Electric Green, not any house palette color).
- ✅ Single warm accent at most.
- ✅ Type set quietly — Modern Era Bold or Medium, not Black.
- ✅ Restrained composition; no mouth-bleed-off-edge or duotone-shadow treatments.
- ✅ Wordmark or mouth-mark, if present, is *small* and respectful — not a hero element.

**Fail signals:**
- ❌ Electric Green anywhere on the slide
- ❌ Mouth used at hero scale (corporate clients shouldn't see the mouth that big)
- ❌ Saturated pop palette
- ❌ Pop-art compositional energy

**If this fails:** check that Claude Design picked `oncamera.corporate` context, not `house`; check that the corporate palette tokens are pulling from `oncamera.corporate.*`, not `house.*`.

---

## Artifact 3 — Drinkle (consumer-tier) social tile

**Brief:** "Generate a 1080×1080 Instagram tile announcing a Drinkle product launch. Tagline: 'Bottled the noise.' Bilingual sibling line."

**Pass criteria:**
- ✅ Saturated, pop palette — multiple primary colors active simultaneously.
- ✅ Pattern-forward composition.
- ✅ Headline at Display scale, Modern Era Black.
- ✅ Bilingual sibling line at equal optical weight.
- ✅ House mouth used (this is OGeeZ-presents-Drinkle, the wrapping is house).

**Fail signals:**
- ❌ Muted earth tones (that's heritage)
- ❌ Single-color restrained composition (that's corporate)
- ❌ Black-and-white treatment (that's the BTS register, not consumer)

---

## Artifact 4 — Bilingual headline pair

**Brief:** "Render a single hero headline pairing the English line `A straight face that makes you laugh.` with the Arabic line `وش جاد بيضحّك.` — both at the same optical weight."

**Pass criteria:**
- ✅ Arabic and English at the same visual height/weight, not the same point size.
- ✅ Arabic in Neue Frutiger Arabic (or appropriate fallback).
- ✅ English in Modern Era.
- ✅ Both readable; neither feels like a subtitle of the other.
- ✅ Direction correct — Arabic right-to-left, English left-to-right.

**Fail signals:**
- ❌ Arabic set 30% smaller than English
- ❌ Arabic in a generic sans (Tahoma, Arial as primary, not fallback)
- ❌ Arabic positioned underneath English with smaller letterforms

**If this fails:** check that Neue Frutiger Arabic is available, or that fallback `--ogz-font-ar` is set sensibly; check that the type-pairing rule in `tokens.json` is documented in the README.

---

## Reporting

Pass/fail goes into `examples/` as a dated subfolder:

```
examples/
└── 2026-04-27-validation-v0.1.0/
    ├── 01-house-onepager-PASS.png
    ├── 02-aljazira-cover-PASS.png
    ├── 03-drinkle-tile-FAIL.png    ← annotate the failure mode
    ├── 04-bilingual-PASS.png
    └── notes.md                    ← what changed in tokens to fix the fail
```

A version doesn't ship until 4 of 4 pass.

---

## Beyond v0.1 — rolling validation set

As production work flows through Claude Design, add real artifacts as additional validation samples. Goal: when v1.0 ships, the validation set has 12+ real-world artifacts covering all four contexts and all 9 deck layouts.
