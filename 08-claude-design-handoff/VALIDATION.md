# Validation — 8-Artifact Test Set

After building, generate these 8 artifacts. If any one fails the bar test, **fix the system, not the artifact.**

## The 8

### 1. Manifesto-as-document

**Context:** `house`. Full single-page document.
**Format:** Printable PDF + a quiet HTML page on ogeez.com.
**Spec:** Single column, generous margins, warm paper-white background, ink-black body. Modern Era + Neue Frutiger Arabic at equal weight. No internal headers; numbered prose; light paragraph separation. One image — the Mabeen still — sized smaller than the eye expects, captioned plainly: *Frame from Mabeen / 2026.* Footer: *Attention, not volume.* + wordmark.
**Pass criteria:** zero signals. The work is the manifesto. Reads at the bar.
**Fail criteria:** any decorative ornament, any color signal, any "designed" feel.

### 2. House recruiting one-pager

**Context:** `house`.
**Format:** Single A4 page (or LinkedIn-post-ready).
**Spec:** Paper + ink substrate. One signal (Electric Green default) at the call-to-action *Apply at ogeez.studio.* Headline + 3-paragraph body + signal CTA + footer chrome. Bilingual where the idea earns it.
**Pass criteria:** one signal, one headline, mostly empty.
**Fail criteria:** signal flooding, multiple CTAs, bullet lists of dead agency words.

### 3. Bank Aljazira deck cover (corporate-tier)

**Context:** `oncamera-corporate`.
**Format:** 1920×1080 deck cover.
**Spec:** Restrained black + warm taupe. House signals retired. Bilingual headline at equal optical weight.
**Pass criteria:** zero house signals; client tier respected; bilingual matches optical weight.
**Fail criteria:** house Electric Green leaking onto a client surface.

### 4. Drinkle social tile (consumer-pop)

**Context:** `oncamera-consumer`.
**Format:** 1080×1080 (square) and 1080×1920 (vertical).
**Spec:** Saturation up; client palette imported; one OGeez signal at most as a wink. Headline-first with consumer-pop register.
**Pass criteria:** client palette dominant, OGeez wink subordinate.
**Fail criteria:** OGeez signals dominating a client artifact.

### 5. Bilingual headline slide

**Context:** `house`.
**Layout:** L11 — bilingual sibling.
**Spec:** Arabic + ◆ + English at equal optical weight. The diamond is the structural divider. Pure substrate; zero signals if the headline carries.
**Pass criteria:** equal optical weight; diamond present; no signal needed.
**Fail criteria:** Arabic smaller than English; diamond missing; signals adding chrome.

### 6. Mabeen festival submission cover

**Context:** `film`.
**Layout:** L_FILM.
**Spec:** Austere black ground, white type. Title (Arabic + Latin), byline, *OGeez Presents* mark only. Zero signals. The film is the signal.
**Pass criteria:** Voi black; centered, austere; zero house signals.
**Fail criteria:** house signals leaking into the film context.

### 7. Idea-first deck cover

**Context:** `house`. **Posture:** `client.status=repeat`.
**Layout:** L10.
**Spec:** Half-and-half — idea on the left, image on the right. **No studio chrome on slide 1.** No wordmark, no positioning line, no page number — just the idea.
**Pass criteria:** zero studio chrome; image carries the right half; idea is one line + bilingual sibling.
**Fail criteria:** any wordmark / positioning / page number on slide 1.

### 8. Vertical reels first-frame

**Context:** `house`.
**Format:** 1080×1920 (9:16).
**Spec:** Safe top zone (220px), safe bottom zone (320px). Headline in the safe band. Mouth in `trailing` state if brief invites; otherwise paper + ink quiet.
**Pass criteria:** safe zones honored; one signal max; reads at thumb-distance.
**Fail criteria:** content in safe zones; multiple signals; over-designed.

## How to read a fail

If an artifact fails, the failure is in the **system**, not the **artifact**. Examples:

- If multiple signals leak, the palette-rules.md rule isn't constraining strongly enough — tighten it.
- If Arabic is rendering smaller than Latin, the type scale isn't loaded — fix the token.
- If the wordmark looks "techy", system-ui isn't in the fallback waterfall — fix the stack.
- If decks feel template-y, the do-and-dont list isn't strict enough — add explicit examples.

**Patch the docs and tokens; do not patch one artifact at a time.**

## The release gate

The system is shipped when all 8 artifacts pass. Until then, the system is in development.

---

*See `CLAUDE_DESIGN_PROMPT.md` for the build prompt. See `DO_AND_DONT.md` for the constraint list.*
