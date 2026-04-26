# Source files for this design system

The two canonical reference docs (`visual-guidelines.md` and `brand-voice-guidelines.md`) are populated into this folder by `scripts/copy-master-assets.ps1` (Windows) or `scripts/copy-master-assets.sh` (macOS/Linux). Run that script once after cloning.

If the docs are missing, copy them manually from:

| Doc | Source |
|---|---|
| `visual-guidelines.md` | `../../templates/ogeez-visual-guidelines.md` (vault canonical) |
| `brand-voice-guidelines.md` | `../../templates/brand-voice-guidelines.md` (vault canonical) |

Both files live in `agency/templates/` in the OGeeZ vault. They are the source of truth — this design system implements them.

---

## Reference hierarchy

When two sources conflict, the order of authority is:

1. **The master Brand Identity kit** at `../../OGeeZ Design System/Brand Identity/` — wins on visual specifications (logo geometry, color values, type files, layout proofs).
2. **`visual-guidelines.md` v2.0+** — wins on visual interpretation (when to use what, treatment rules, do/don't).
3. **`brand-voice-guidelines.md` v4** — wins on copy, tone, terminology, prohibited phrases.
4. **This repo's `tokens.json`** — wins on token shape and Claude Design ingest format.

When in doubt: **the master kit**. When you need an answer the master kit doesn't address: **the guidelines doc**.

---

## Updating the canonical docs

If you edit `tokens.json` or `tokens.css` based on a new finding (e.g. master swatch arrives from Chubby Studio with exact CMYK values), reflect the change in:

1. `tokens.json` — first
2. `tokens.css` — mirror
3. `docs/visual-guidelines.md` (in the vault) — update §5 Color
4. This repo's `CHANGELOG.md` — log the version bump

The vault doc is the human-readable canon. This repo is the machine-readable expression of the same canon.
