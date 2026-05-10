# Motion Guidelines — OGeez V3

**v3.0** · 2026-05-10 · Held, observational. The kinetic spec retuned for restraint.

---

## §0. Why motion is first-class in V2

V1 documented the visual identity beautifully and explicitly flagged motion as an open question. Every peer benchmark — DIA Studio, Studio Dumbar/DEPT, BUCK, Pentagram (Channel 4), A24, Stink Studios — treats motion as **foundational**, not as an effect bolted onto a static system. As DIA puts it: *"Begin with motion. Build everything else from that foundation."*

For OGeeZ — a **filmmaker-led** studio whose mascot is a **speaking mouth** — the absence of a motion system is the brand's single largest operational gap (P ≈ 0.85 damage per V2 critique). V2 closes it.

---

## §1. The three-easing system

OGeez V3 uses **three named easing curves** for everything. Resist adding more.

(Renamed from V2's `shout` / `bite` / `pull` → `pull` / `hold` / `lift` for the restraint register. V2 names aliased in `tokens.css` for component compatibility.)

| Token | Cubic-bezier | Personality | Use for |
|---|---|---|---|
| `--motion-ease-pull` (default) | `(0.4, 0.0, 0.2, 1.0)` | Default smooth | Pull-back reveals (corpus craft Move #8), default UI, slide transitions, body content fades |
| `--motion-ease-hold` | `(0.2, 0.0, 0.0, 1.0)` | Fast out, slow in | Emphasis appearances, headline reveals, end-card lockups |
| `--motion-ease-lift` | `(0.7, 0.0, 0.3, 1.0)` | Sharp both ends | Snap moves, match-cuts, transitions that need to LAND |

**Why three?** One per house pace. Pull = the pull-back-reveal corpus pattern (default). Hold = the held-beat / second-of-silence. Lift = the snap that needs to land.

---

## §2. The five timing tokens (24fps base)

OGeeZ is a film studio. Timings derive from cinema-craft, not arbitrary UX defaults.

| Token | Duration | Frames @24fps | Use for |
|---|---|---|---|
| `--motion-duration-instant` | 80ms | 2 | Micro-feedback (button-press, hover affirmation) |
| `--motion-duration-quick` | 200ms | 5 | UI hover/focus, tooltip appears |
| `--motion-duration-default` | 320ms | 8 | Standard transition, modal open, accordion |
| `--motion-duration-emphasis` | 640ms | 15 | Emphasized appearance, hero reveal |
| `--motion-duration-cinematic` | 1200ms | 28 | Full beat — slide transition, scene-divider sting |
| `--motion-duration-pull-back` | 1600ms | 38 | Pull-back-reveal pacing (matches the corpus craft move's editorial rhythm) |

**Rule:** if a duration isn't in this table, it's wrong. Add a token before adding an arbitrary value.

---

## §3. The mouth motion vocabulary

The mouth has **6 states** (technical asset, deployed sparingly per V3). Each is set via `data-state` on the SVG. The mouth is never a headline; the wordmark is the public face. These states exist for moments where personality is invited (recruiting, internal, sign-offs, stings) — not as default deployment.

### 3.1 `resting` (default)
- Closed-position mouth.
- Sparkle still.
- Shout-lines visible but static.
- **Use for:** static logo placement (favicon, business card, deck footer, signature), any "the mouth is here" not "the mouth is doing something" moment.

### 3.2 `shouting`
- Three shout-lines emit, staggered by 80ms.
- Each line: `transform-origin: right center`, scaleX(0.5) → scaleX(1), opacity 0 → 1.
- Curve: `--motion-ease-hold`. Total duration: 320ms.
- **Use for:** brand-mark hits in motion stings, lockup reveals at slide ends, sting-only entries.

### 3.3 `biting`
- Airplane animates from frame-right (offscreen) → mouth interior → settles bitten.
- Curve: `--motion-ease-lift`. Total duration: 640ms.
- **Use for:** title cards, sting climaxes, anywhere the visual gag is the moment of attention. Use sparingly — the bite carries weight only when the rest of the system is restrained.

### 3.4 `cycling`
- Lip color cycles through all 12 mouth-library colors.
- Each color holds for 100ms (1200ms total). Linear easing for true cycle feel.
- **Use for:** section-divider stings, scene transitions in motion decks. Once per deck section, max — overuse breaks it. Default-off; opt-in for moments where the cycle is deliberate.

### 3.5 `bleeding`
- Mouth pans 30% past the canvas edge.
- Curve: `--motion-ease-pull`. Duration: 1200ms.
- **Use for:** hero entrances (cover slide → first content slide), full-bleed editorial moments. Held, observational.

### 3.6 `trailing`
- Three motion-trail copies of the lip silhouette extend behind the mouth, fading.
- Curve: `--motion-ease-hold`. Duration: 640ms. Opacity: 0 → 0.4 → 0.
- **Use for:** kinetic backgrounds (WeTransfer, vertical social cover), suggesting speed/sound.

### 3.7 Combinatorics
States can stack with treatments:
- `state="shouting" treatment="duotone-shadow"` — shouting with offset shadow color
- `state="cycling" treatment="bleed"` — color-cycling while panning past edge
- `state="biting" treatment="motion-trail"` — biting with trail behind

12 colors × 5 treatments × 6 states = **360 valid mouth variants from one source file.** That is the parametric system V1 promised.

---

## §4. The studio sting — "OGeeZ Presents" / "الشلة الأصلية تقدم"

V1 had no studio mark for film work. V2 ships **4 sting variants**. Each picks a base then applies one bespoke parameter per project.

### 4.1 Festival variant (4s)
- **Context:** `[data-context="film"]`. Black ground.
- **Animation:** Single white mouth-mark fades in at center (640ms). Holds 2s. Title + Arabic title fade in below (320ms). Hold 1s. Cut to black.
- **Sound:** Silent. (Festival house policy: no studio score eats into the film's first scene.)
- **Use for:** Festival submissions (Mabeen, الشلة الأصلية shorts). Cannes, Sundance, SXSW, El Gouna, Red Sea.
- **Bespoke parameter (one per film):** Color of the mouth-mark accent line. Defaults to `--color-primitive-electric-green` but can be muted to match the film's color story.

### 4.2 Theatrical variant (8s)
- **Context:** `[data-context="film"]` or `[data-context="house-dark"]`.
- **Animation:** Black ground. Mouth fades in (640ms). Mouth color cycles through library (1200ms). Settles on the chosen accent (V3 default: muted, restraint-aligned; archived V2 default Electric Green available for legacy compatibility only). Mouth bites airplane (640ms). *OGeez Presents* + Arabic title reveal (320ms). Hold 4s. Cross-fade to film.
- **Sound:** Commissioned score. (TBD: score commission to a composer; Hashem Shaheen recommended for first pass.)
- **Use for:** Theatrical releases. Mabeen at El Gouna, Red Sea, MENA cinema runs.
- **Bespoke parameter:** Color of the mouth at "settle" moment. V3 default = muted accent (designer-pending); the 12-color mouth library is available for per-film customization (e.g. black for tonally darker pieces, archived Epink for comedy-leaning premieres if needed).

### 4.3 Streaming variant (3s)
- **Context:** `[data-context="house"]` or `[data-context="house-dark"]`.
- **Animation:** Color flood (V3 signal accent by default; per-project bespoke). Mouth shouts (320ms). Lockup reveals (320ms). Snap-out (80ms).
- **Sound:** Optional. If present, single rising note + impact. Can be muted (default for muted-by-default platforms).
- **Use for:** Streaming opens (Netflix, Shahid, OSN), client-facing case-study reels, web hero videos.
- **Bespoke parameter:** Background color flood (any of the 12 mouth-library colors). Allows per-project skin without re-rendering.

### 4.4 Social-trim variant (1.2s)
- **Context:** `[data-context="house"]` (or any).
- **Animation:** Vertical 9:16. Mouth bites (640ms). Lockup snap-on (160ms). Hold (400ms).
- **Sound:** Two versions exported per render — sound-on (single thump + shout) and sound-off (silent, default for TikTok/Reels muted autoplay).
- **Use for:** TikTok, Reels, Snapchat first-frame branding, vertical pre-roll.
- **Bespoke parameter:** Mouth color skin (12-library). Festival shorts get black-mouth; consumer-pop gets bright color.

### 4.5 Per-film customization protocol
Each new project picks one base sting variant + one bespoke parameter. **No more.** This keeps the system coherent while allowing per-film identity. Documented in the project's treatment doc at delivery time.

---

## §5. Slide transitions (named after corpus craft moves)

**Three transitions cover ~90% of usage.** Resist adding more.

### 5.1 `pull-back` (1200ms, `--motion-ease-pull`)
- Map to corpus Move #8 (pull-back reveal) — DNA synthesis.
- Camera-style zoom-out from object-tight to context-wide.
- **Use for:** Cover → first content slide; section in-points; revealing the scale or context of an element.

### 5.2 `match-cut` (80ms, instant — no easing)
- Map to corpus Move #11 (match-cut past/present).
- Sharp jump-cut between two slides sharing a visual element (positioned identically).
- **Use for:** Before/after comparisons; era jumps; "the same shape, different content" demonstrations.

### 5.3 `bleed-in` (640ms, `--motion-ease-shout`)
- Map to V1 visual Move #1 (mouth-bleeds-off-edge).
- Mouth bleeds in from the edge as the new slide loads underneath.
- **Use for:** Section dividers; high-impact transitions; entries that need the brand's swagger.

---

## §6. Chyrons / lower-thirds

Two registers. Pick at production-brief stage, not edit-suite stage.

### 6.1 Commercial chyron (`[data-context="oncamera-consumer"]` + house)
- Full color band (height 80px on 1080p frame).
- Name: Modern Era Bold, white on color. Role: Modern Era Regular, smaller, white at 80% opacity.
- Brand color emphasis underline (3px thick) under name.
- Bilingual variant: Arabic name + ◆ + Latin name in the band.
- **Animation:** Bleed-in from frame-left (320ms, `--motion-ease-shout`). Hold 4-6s. Bleed-out (200ms).

### 6.2 Filmmaker chyron (`[data-context="film"]`)
- Single text line. Modern Era Light. White text on black 30% opacity scrim (or transparent if shot has dark area).
- No band. No emphasis underline. No animation in (fade-in only, 200ms).
- **Use for:** Talking-head documentary, BTS, festival-bound, Sold Out interview-style.

---

## §7. End-cards

Two variants.

### 7.1 `silent-hold`
- Map to corpus Move #7 ("the second of silence").
- 1 full second of black-frame silence after final shot.
- No mark. No score. Just the held beat.
- **Use for:** Films, festival shorts, anywhere the audience needs the second to think.

### 7.2 `studio-mark`
- Full lockup hold for 2-3 seconds.
- Background per context (white for `house`, black for `film`/`house-dark`, color flood for `oncamera-consumer`).
- Optional URL or social-handle line below lockup.
- **Use for:** Commercial reels, case-study videos, branded content.

---

## §8. Type animations

**Conservative.** OGeeZ's type system carries the brand; over-animation cheapens it. Three permitted patterns:

1. **Fade-in / blur-in** — opacity 0 → 1 + `filter: blur(4px) → blur(0)`. Duration: `--motion-duration-default`. Curve: `--motion-ease-pull`.
2. **Type-on** — words appear sequentially (each word: 80ms staggered, opacity 0 → 1). Use for headline reveals at slide opens. NEVER for body copy.
3. **Bilingual reveal** — Arabic appears + diamond ◆ rotates 90° + Latin slides in from right. 640ms total. Use for L11 (bilingual sibling headline) layout.

**Banned animations:** typewriter (cliché), elastic bounce (un-OGeeZ), color-cycle on type (mouth-only), rotate (without semantic reason).

---

## §9. Motion-reduce fallbacks (a11y, non-negotiable)

All motion durations resolve to 0ms when `prefers-reduced-motion: reduce` is set. The state machine still works (e.g., `state="biting"` shows the airplane in mouth — it just appears instantly instead of animating in).

```css
@media (prefers-reduced-motion: reduce) {
  :root {
    --motion-duration-instant: 0ms;
    --motion-duration-quick: 0ms;
    --motion-duration-default: 0ms;
    --motion-duration-emphasis: 0ms;
    --motion-duration-cinematic: 0ms;
    --motion-duration-pull-back: 0ms;
    /* etc. */
  }
}
```

---

## §10. The single most important motion rule

> **Held, observational, anti-swagger. Every motion uses a token. Never an arbitrary duration or curve. The "second of silence" is built into every reel as a structural choice — no swooshes, no whip-pans, no kinetic typography animations.**

If a designer or developer types `transition: 250ms ease-in-out`, that's a system violation. Use `transition: var(--motion-duration-default) var(--motion-ease-pull)`. The point of the system is consistency at the timing layer, not just the color layer.

V3 motion language matches the v5 visual brief: the system signals restraint over swagger. Cuts on causality, not on energy. Sound design carries what the cut withholds.

---

## §11. Open questions

1. **Theatrical sting score commission.** Recommend Hashem Shaheen (composer). Budget ~25k EGP for original 8s cue with 4s social-trim variant.
2. **Lottie export pipeline.** Per-sting Lottie files need to be generated from a master After Effects file. AE file pending.
3. **Per-film bespoke parameter governance.** Who approves the parameter pick per project — Ahmed, Amira, or director-of-record? Defaults to Ahmed (ECD) until written otherwise.
4. **Sound design library.** Stings reference "single thump," "rising note," "shout impact" — needs an actual sound-effect library. Recommend Splice Pro subscription + custom OGeeZ stinger pack.

---

*Companion: [[visual-guidelines-v3]] for static visual system. [[voice]] for tone. [[manifesto]] for the spine.*
