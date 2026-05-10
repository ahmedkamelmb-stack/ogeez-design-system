# Visual Guidelines V3

## One-sentence brief

OGeez is a Cairo + Riyadh studio held to one bar — *Attention, not volume.* The visual identity refuses three things: gloss, costume, agency-polish. The brand should look *less designed, not more.*

## Anchors

- **Manifesto:** *في مستوى. / عند المستوى، أو مرفوض.* (See [[manifesto]] for the full document.)
- **Positioning:** *Attention, not volume.*
- **Single most important rule:** look less designed, not more.

## Constants — what survives the V3 reset

### Wordmark
The current OGeez wordmark stays unchanged. Legal mark stays *OGZ Studios*. Arabic stays *أوچييز ستوديوز*. The wordmark is the only element carrying memory of previous eras; recognition is the reason. Never redraw, skew, stretch, drop-shadow, or recolor.

### Mouth library
All 12 mood-mouths from the original Chubby Studio manual stay in the library, redrawn in the new restraint palette. **Deployed sparingly. Never as headline. Never as identifier of the studio's tone.** The mouth becomes a discipline mark used in moments where personality is invited (recruiting, internal documents, stickers, sign-offs). The wordmark — not the mouth — is the public face.

### Typography spine
Modern Era for Latin. IBM Plex Sans Arabic (default, SIL OFL) for Arabic, with Neue Frutiger Arabic as fallback if licensing approved (decision deferred to budget conversation). Held at equal optical weight. The diamond ◆ is the bilingual structural divider when both languages appear together.

## Variables — what V3 rebuilds

### Palette
**Pending fresh designer pass.** The previous Electric Green / Ultramarine / Epink palette is archived (legal reference only, never deployed). Tokens carry placeholder values until the designer brief lands.

Designer brief:
- **Tone:** cold, quiet, confident-by-restraint, more silent.
- **Ceiling:** 5–7 colors total — paper, ink, two muted neutrals, one signal accent, one refusal/alarm.
- **Test:** must survive (a) a deck cover with no image, (b) the manifesto as a printed document, (c) a hire ad on LinkedIn. If it survives all three scenarios, it ships.

The designer brief is a separate engagement; this repo carries placeholders that should be replaced.

### Layout grammar
- Air-first. Horizon-disciplined. Classical thirds.
- White-space load-bearing. Anti-density.
- One image per page. One headline per slide. One refusal per page.
- The grid is invisible; the rhythm is the design.
- Margins generous to the point of looking expensive.

### Photography
- Real places, real light, sun-washed, low-saturation, anti-designed.
- Subjects often back-to-camera or face-withheld.
- Patient, observational, horizontal-prefer.
- No designed sets in stills unless the design IS the subject.
- The pull-back reveal happens in frame composition, not in motion.
- **Reference image:** the Mabeen still on the Nile bank — sun-washed off-whites, muted earth-greens, low-saturation blues, dark naturalistic shadow, horizon at classical third.

### Motion language
- Slow, held, observational.
- Long takes preferred. Cuts on causality, never on energy.
- Sound design carries what the cut withholds.
- The "second of silence" built into every reel as a structural choice.
- **No** swooshes, **no** whip-pans, **no** kinetic typography animations.
- See [[motion-guidelines]] for the full specification.

### Deployment density
Less is the rule. Where a punk-zine impulse would cram personality onto every page, the V3 register leaves the page mostly empty and lets the work fill it.

## Logo system

The primary identity is a two-part mark:
1. **Speech-bubble wordmark** (the public face)
2. **Mouth icon** (the discipline mark, deployed sparingly)

Never redraw, skew, stretch, drop-shadow, or recolor the approved lockup. Use source assets when available. For generated previews, use `assets/mouth/parametric.svg` as the system surrogate.

## Mouth system (technical — V2 architecture preserved)

The mouth is a parametric component. Fixed anatomy (NEVER changes):
- Outer lip silhouette
- White teeth
- Black void
- Airplane silhouette
- Sparkle
- Magenta tooth
- Red tongue
- Three shout-lines

Variable parameters:
- `--mouth-lip` (one of 12 library colors)
- `data-state` (resting / shouting / biting / cycling / bleeding / trailing)
- `data-treatment` (flat / duotone-shadow / motion-trail / bleed / photo-mask)

12 colors × 5 treatments × 6 states = 360 valid variants from one source. The technical capability stays from V2; the deployment posture in V3 is restrained — sparingly, never as headline.

## Color rules (V3)

- **House surfaces:** restraint palette (designer-pending). Bg = paper. Fg = ink. Accents minimal.
- **On-camera:** client-tier-deterministic. Corporate / consumer / heritage. Never the house palette.
- **Film context (`[data-context="film"]`):** austere. Black ground, white type, single accent at sting only.
- **Print context:** CMYK + Pantone calibrated against the final designer pass.

## Layout rules

- Decks use a 12-column grid.
- Headlines big where they earn it; otherwise leave the page mostly empty.
- One clear hierarchy per slide.
- Cards are for repeated items or framed tools, not nested page sections.
- The mouth can bleed off-edge by 25–40% in confident brand moments — but only sparingly; never as a default deployment.

## Photography (per surface)

For OGeez-owned surfaces (`[data-context="house"]` / `house-dark`):
- Sun-washed, low-saturation.
- Tight on faces, hands, objects when relevant — but more often, withheld face, horizon-disciplined wide.
- Real talent, lightly directed.
- Cinematic frame logic.

For client work, obey the selected on-camera context.

For film context (`[data-context="film"]`), use the actual film's photography. The brand wears the film, not the other way around.

## What gets killed (V3 rejection list)

- Neon-lime-on-magenta deployment.
- 12-mood mouths as headline or identifier.
- Punk-zine register entirely.
- Mouth-as-airplane-holder type playful illustrations.
- "Loud, vibrant, expressive" as positioning copy.
- "Controlled chaos" as a voice rule.
- Anti-AI texture as decorative default (texture is opt-in only when it's evidence the work was made).
- *"Filmmaker-led commercial studio with festival credibility and a bilingual bench"* as a positioning sentence.

## The single most important visual rule

**The new system's job is to look *less designed*, not more.** Every page asks: *would this read at the bar?* If a design choice is doing decorative work, cut it. The visual reset succeeds when the studio's surfaces look like residue of the work, not advertising for the studio that made it.
