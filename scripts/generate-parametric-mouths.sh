#!/usr/bin/env bash
# Generate 12 color-shifted parametric mouth SVGs from the single template.
# Each output is a pure SVG with the lip color baked in — useful when the
# environment can't honor `currentColor` (e.g., some PowerPoint embeds).
# The CSS-variable parametric path is preferred for web/Claude Design.

set -e
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
REPO_ROOT="$( cd "$SCRIPT_DIR/.." && pwd )"
TEMPLATE="$REPO_ROOT/assets/mouth/svg/mouth-parametric.svg"
OUT="$REPO_ROOT/assets/mouth/svg"

declare -A colors=(
  [01]="#33EB05"  # Electric Green
  [02]="#000000"  # Black
  [03]="#F59A1F"  # Orange
  [04]="#E602BB"  # Epink
  [05]="#28D9A8"  # Mint
  [06]="#1FBDFF"  # Sky Blue
  [07]="#C4B560"  # Olive
  [08]="#3349EB"  # Ultramarine
  [09]="#FFD500"  # Yellow
  [10]="#F5BEB7"  # Coral
  [11]="#E8D6A0"  # Cream
  [12]="#BFBFBF"  # Grey
)

for k in "${!colors[@]}"; do
  hex="${colors[$k]}"
  out="$OUT/mouth-${k}-baked.svg"
  sed "s|currentColor|${hex}|g" "$TEMPLATE" > "$out"
  echo "  ${k} → $hex"
done
echo "12 baked SVG variants written to $OUT/"
