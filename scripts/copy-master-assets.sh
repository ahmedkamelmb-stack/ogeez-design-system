#!/usr/bin/env bash
# OGeeZ Design System — Master Asset Copy Script (macOS / Linux)
# Run from the design-system root: bash scripts/copy-master-assets.sh
# Re-run any time the master kit gets updated.

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
REPO_ROOT="$( cd "$SCRIPT_DIR/.." && pwd )"
BRAND_ROOT="$( cd "$REPO_ROOT/../Brand Identity" && pwd )"
VAULT_TPL="$( cd "$REPO_ROOT/../../templates" && pwd )"

echo ""
echo "OGeeZ Design System — populating from master kit..."
echo "  Repo:  $REPO_ROOT"
echo "  Brand: $BRAND_ROOT"
echo "  Tpl:   $VAULT_TPL"
echo ""

copy_tree() {
  local from="$1"; local to="$2"; local label="$3"
  if [ ! -d "$from" ]; then
    echo "  SKIP $label — source missing: $from"
    return
  fi
  mkdir -p "$to"
  cp -R "$from/." "$to/"
  echo "  OK   $label"
}

copy_file() {
  local from="$1"; local to="$2"; local label="$3"
  if [ ! -f "$from" ]; then
    echo "  SKIP $label — source missing: $from"
    return
  fi
  mkdir -p "$(dirname "$to")"
  cp "$from" "$to"
  echo "  OK   $label"
}

# 1. Logos
copy_tree "$BRAND_ROOT/Logos/PDF"  "$REPO_ROOT/assets/logo/pdf"  "Logos / PDF"
copy_tree "$BRAND_ROOT/Logos/EPS"  "$REPO_ROOT/assets/logo/eps"  "Logos / EPS"
copy_tree "$BRAND_ROOT/Logos/PNGS" "$REPO_ROOT/assets/logo/png"  "Logos / PNG"

# 2. Mouths
copy_tree "$BRAND_ROOT/Mouths/PDF" "$REPO_ROOT/assets/mouth/pdf" "Mouths / PDF"
copy_tree "$BRAND_ROOT/Mouths/EPS" "$REPO_ROOT/assets/mouth/eps" "Mouths / EPS"
copy_tree "$BRAND_ROOT/Mouths/PNG" "$REPO_ROOT/assets/mouth/png" "Mouths / PNG"

# Normalize mouth PNG filenames.
# The Illustrator artboards are numbered 1, 3-13 (skipping 2). The EPS export and
# the master Mouths PDF are numbered sequentially 01-12 in PDF page order:
#   Artboard 1  → Mouths-01.png (Green)
#   Artboard 3  → Mouths-02.png (Black)
#   Artboard 4  → Mouths-03.png (Orange)
#   Artboard 5  → Mouths-04.png (Magenta)
#   Artboard 6  → Mouths-05.png (Mint)
#   Artboard 7  → Mouths-06.png (Sky Blue)
#   Artboard 8  → Mouths-07.png (Olive)
#   Artboard 9  → Mouths-08.png (Ultramarine)
#   Artboard 10 → Mouths-09.png (Yellow)
#   Artboard 11 → Mouths-10.png (Coral)
#   Artboard 12 → Mouths-11.png (Cream)
#   Artboard 13 → Mouths-12.png (Grey)
echo "  Normalizing mouth PNG filenames..."
MOUTH_DIR="$REPO_ROOT/assets/mouth/png"
if [ -d "$MOUTH_DIR" ]; then
  cd "$MOUTH_DIR"
  # Stage 1: Artboard N@10x.png → _stg_<artboard>.png
  for f in Artboard*@10x.png; do
    [ -e "$f" ] || continue
    n=$(echo "$f" | sed -E 's/Artboard ([0-9]+)@10x\.png/\1/')
    mv "$f" "_stg_$n.png"
  done
  # Stage 2: map artboard N to sequential index. Artboard 1 → 1, Artboards 3-13 → 2-12
  if [ -e "_stg_1.png" ]; then mv "_stg_1.png" "Mouths-01.png"; fi
  for ab in 3 4 5 6 7 8 9 10 11 12 13; do
    seq=$((ab - 1))
    nn=$(printf "%02d" "$seq")
    if [ -e "_stg_${ab}.png" ]; then mv "_stg_${ab}.png" "Mouths-${nn}.png"; fi
  done
  cd - > /dev/null
fi

# 3. Fonts — extract Modern Era Family.zip
FONT_ZIP="$BRAND_ROOT/Applications/Presentation design/Modern Era Family.zip"
FONT_OUT="$REPO_ROOT/assets/fonts/Modern Era Family"
if [ -f "$FONT_ZIP" ]; then
  mkdir -p "$FONT_OUT"
  unzip -oq "$FONT_ZIP" -d "$FONT_OUT"
  echo "  OK   Fonts extracted to $FONT_OUT"
else
  echo "  SKIP Fonts — zip not found at $FONT_ZIP"
fi

# 4. Applications — reference PDFs
copy_file "$BRAND_ROOT/Applications/Presentation design/OGZ Presesentation slides.pdf"           "$REPO_ROOT/assets/applications/presentation-reference.pdf"  "App ref: presentation-reference.pdf"
copy_file "$BRAND_ROOT/Applications/Presentation design/Copy of Templete presentation.pptx"      "$REPO_ROOT/assets/applications/presentation-template.pptx"  "App ref: presentation-template.pptx"
copy_file "$BRAND_ROOT/Applications/BUSINESS CARDS/O!GZ BUSINESS CARDS (1).pdf"                  "$REPO_ROOT/assets/applications/business-cards.pdf"          "App ref: business-cards.pdf"
copy_file "$BRAND_ROOT/Applications/Letterhead/O!GZ Studios Letterhead.pdf"                       "$REPO_ROOT/assets/applications/letterhead.pdf"              "App ref: letterhead.pdf"
copy_file "$BRAND_ROOT/Applications/Email signature designs/OGZ Signature.pdf"                    "$REPO_ROOT/assets/applications/email-signature.pdf"         "App ref: email-signature.pdf"

# 5. Canonical docs
copy_file "$VAULT_TPL/ogeez-visual-guidelines.md" "$REPO_ROOT/docs/visual-guidelines.md"      "Doc: visual-guidelines.md"
copy_file "$VAULT_TPL/brand-voice-guidelines.md"  "$REPO_ROOT/docs/brand-voice-guidelines.md" "Doc: brand-voice-guidelines.md"

echo ""
echo "Done. Repo populated."
echo ""
echo "Next steps:"
echo "  1. Review assets/ — check that logos, mouths, and fonts are present."
echo "  2. Open components/index.html in a browser to spot-check."
echo "  3. Run the 4-artifact validation set (see VALIDATION.md)."
echo "  4. Push the repo to GitHub and point Claude Design at it."
echo ""
