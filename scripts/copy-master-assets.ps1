# OGeeZ Design System — Master Asset Copy Script (Windows / PowerShell)
# Run from the design-system root: .\scripts\copy-master-assets.ps1
# Copies logos, mouths, fonts, application references, and canonical docs from
# the master Brand Identity kit into this repo's assets/ and docs/ folders.
# Re-run any time the master kit gets updated.

$ErrorActionPreference = "Stop"

# Resolve paths relative to this script
$scriptDir = $PSScriptRoot
$repoRoot  = Resolve-Path (Join-Path $scriptDir "..")
$brandRoot = Resolve-Path (Join-Path $repoRoot "..\Brand Identity")
$vaultTpl  = Resolve-Path (Join-Path $repoRoot "..\..\templates")

Write-Host ""
Write-Host "OGeeZ Design System — populating from master kit..." -ForegroundColor Green
Write-Host "  Repo:  $repoRoot"
Write-Host "  Brand: $brandRoot"
Write-Host "  Tpl:   $vaultTpl"
Write-Host ""

# Helper
function Copy-Tree($from, $to, $label) {
  if (-not (Test-Path $from)) {
    Write-Host "  SKIP $label — source missing: $from" -ForegroundColor Yellow
    return
  }
  if (-not (Test-Path $to)) { New-Item -ItemType Directory -Path $to -Force | Out-Null }
  Copy-Item -Path "$from\*" -Destination $to -Recurse -Force
  Write-Host "  OK   $label" -ForegroundColor Cyan
}

function Copy-File($from, $to, $label) {
  if (-not (Test-Path $from)) {
    Write-Host "  SKIP $label — source missing: $from" -ForegroundColor Yellow
    return
  }
  $toDir = Split-Path -Parent $to
  if (-not (Test-Path $toDir)) { New-Item -ItemType Directory -Path $toDir -Force | Out-Null }
  Copy-Item -Path $from -Destination $to -Force
  Write-Host "  OK   $label" -ForegroundColor Cyan
}

# 1. Logos — copy all PDF / EPS / PNG variants
Copy-Tree (Join-Path $brandRoot "Logos\PDF")  (Join-Path $repoRoot "assets\logo\pdf")  "Logos / PDF"
Copy-Tree (Join-Path $brandRoot "Logos\EPS")  (Join-Path $repoRoot "assets\logo\eps")  "Logos / EPS"
Copy-Tree (Join-Path $brandRoot "Logos\PNGS") (Join-Path $repoRoot "assets\logo\png")  "Logos / PNG"

# 2. Mouths — 12 color variants
Copy-Tree (Join-Path $brandRoot "Mouths\PDF") (Join-Path $repoRoot "assets\mouth\pdf") "Mouths / PDF"
Copy-Tree (Join-Path $brandRoot "Mouths\EPS") (Join-Path $repoRoot "assets\mouth\eps") "Mouths / EPS"
Copy-Tree (Join-Path $brandRoot "Mouths\PNG") (Join-Path $repoRoot "assets\mouth\png") "Mouths / PNG"

# Normalize mouth PNG filenames.
# Illustrator artboards are 1, 3-13 (skipping 2). The EPS export and master Mouths PDF
# are sequential 01-12 in PDF page order. Map artboard → sequential index:
#   Artboard 1  → Mouths-01.png (Green)
#   Artboard 3  → Mouths-02.png (Black)
#   Artboard 4  → Mouths-03.png (Orange)
#   ...
#   Artboard 13 → Mouths-12.png (Grey)
Write-Host "  Normalizing mouth PNG filenames..." -ForegroundColor DarkGray
$mouthPngDir = Join-Path $repoRoot "assets\mouth\png"
if (Test-Path $mouthPngDir) {
  # Stage 1: Artboard N@10x.png → _stg_N.png
  Get-ChildItem $mouthPngDir -Filter "Artboard *@10x.png" | ForEach-Object {
    if ($_.Name -match "Artboard (\d+)@10x\.png") {
      $n = [int]$Matches[1]
      $stg = Join-Path $mouthPngDir "_stg_$n.png"
      Move-Item -Path $_.FullName -Destination $stg -Force
    }
  }
  # Stage 2: stage → final sequential name
  $abMap = @{ 1 = 1; 3 = 2; 4 = 3; 5 = 4; 6 = 5; 7 = 6; 8 = 7; 9 = 8; 10 = 9; 11 = 10; 12 = 11; 13 = 12 }
  foreach ($ab in $abMap.Keys) {
    $stg = Join-Path $mouthPngDir "_stg_$ab.png"
    if (Test-Path $stg) {
      $seqNum = "{0:D2}" -f $abMap[$ab]
      $final = Join-Path $mouthPngDir "Mouths-$seqNum.png"
      Move-Item -Path $stg -Destination $final -Force
    }
  }
}

# 3. Fonts — extract Modern Era Family.zip
$fontZip = Join-Path $brandRoot "Applications\Presentation design\Modern Era Family.zip"
$fontOut = Join-Path $repoRoot "assets\fonts\Modern Era Family"
if (Test-Path $fontZip) {
  if (-not (Test-Path $fontOut)) { New-Item -ItemType Directory -Path $fontOut -Force | Out-Null }
  Expand-Archive -Path $fontZip -DestinationPath $fontOut -Force
  Write-Host "  OK   Fonts extracted to $fontOut" -ForegroundColor Cyan
} else {
  Write-Host "  SKIP Fonts — zip not found at $fontZip" -ForegroundColor Yellow
}

# 4. Applications — reference PDFs only (skip the heavy AI/PSD/key sources to keep repo light)
$appRefs = @(
  @{ from = "Applications\Presentation design\OGZ Presesentation slides.pdf"; to = "assets\applications\presentation-reference.pdf" },
  @{ from = "Applications\Presentation design\Copy of Templete presentation.pptx"; to = "assets\applications\presentation-template.pptx" },
  @{ from = "Applications\BUSINESS CARDS\O!GZ BUSINESS CARDS (1).pdf"; to = "assets\applications\business-cards.pdf" },
  @{ from = "Applications\Letterhead\O!GZ Studios Letterhead.pdf"; to = "assets\applications\letterhead.pdf" },
  @{ from = "Applications\Email signature designs\OGZ Signature.pdf"; to = "assets\applications\email-signature.pdf" }
)
foreach ($r in $appRefs) {
  Copy-File (Join-Path $brandRoot $r.from) (Join-Path $repoRoot $r.to) ("App ref: " + $r.to)
}

# 5. Canonical docs — copy from agency/templates/ into docs/
Copy-File (Join-Path $vaultTpl "ogeez-visual-guidelines.md")  (Join-Path $repoRoot "docs\visual-guidelines.md")        "Doc: visual-guidelines.md"
Copy-File (Join-Path $vaultTpl "brand-voice-guidelines.md")    (Join-Path $repoRoot "docs\brand-voice-guidelines.md")  "Doc: brand-voice-guidelines.md"

Write-Host ""
Write-Host "Done. Repo populated." -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Green
Write-Host "  1. Review assets/ — check that logos, mouths, and fonts are present."
Write-Host "  2. Open components/index.html in a browser to spot-check."
Write-Host "  3. Run the 4-artifact validation set (see VALIDATION.md)."
Write-Host "  4. Push the repo to GitHub and point Claude Design at it."
Write-Host ""
