# Generate 12 color-shifted parametric mouth SVGs from the single template.
$scriptDir = $PSScriptRoot
$repoRoot  = Resolve-Path (Join-Path $scriptDir "..")
$template  = Join-Path $repoRoot "assets\mouth\svg\mouth-parametric.svg"
$outDir    = Join-Path $repoRoot "assets\mouth\svg"

$colors = @{
  "01" = "#33EB05"; "02" = "#000000"; "03" = "#F59A1F"; "04" = "#E602BB"
  "05" = "#28D9A8"; "06" = "#1FBDFF"; "07" = "#C4B560"; "08" = "#3349EB"
  "09" = "#FFD500"; "10" = "#F5BEB7"; "11" = "#E8D6A0"; "12" = "#BFBFBF"
}

$tpl = Get-Content $template -Raw
foreach ($k in $colors.Keys) {
  $hex = $colors[$k]
  $out = Join-Path $outDir "mouth-${k}-baked.svg"
  ($tpl -replace "currentColor", $hex) | Set-Content -Path $out -NoNewline
  Write-Host "  $k -> $hex"
}
Write-Host "12 baked SVG variants written to $outDir"
