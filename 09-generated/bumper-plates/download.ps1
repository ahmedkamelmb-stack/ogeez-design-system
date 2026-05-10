# OGeez Brand System — Bumper Plates Downloader
# Run from PowerShell on Windows. Downloads the three Higgsfield-generated bumper plates.

$ErrorActionPreference = "Stop"
$base = $PSScriptRoot

# Update these URLs once the in-progress jobs complete (check via Higgsfield dashboard).
# The clapper plate URL is final; the bureaucratic + corniche URLs need to be retrieved
# from Higgsfield once those jobs finish rendering.

$urls = @{
    "bumper-03-clapper.mp4" = "https://d8j0ntlcm91z4.cloudfront.net/user_32y75T10X3fgRU3N6rW5kYUJ91B/hf_20260510_115043_6bc9cb6f-9f10-43fa-b7c3-a9a32a95f4d3.mp4"
    # "bumper-01-bureaucratic.mp4" = "https://d8j0ntlcm91z4.cloudfront.net/.../bumper-01.mp4"  # paste real URL once job 012abf8e completes
    # "bumper-02-corniche.mp4"     = "https://d8j0ntlcm91z4.cloudfront.net/.../bumper-02.mp4"  # paste real URL once job 97420811 completes
}

foreach ($name in $urls.Keys) {
    $dest = Join-Path $base $name
    if (Test-Path $dest) {
        Write-Host "skip  $name (already present)"
        continue
    }
    Write-Host "fetch $name ..."
    Invoke-WebRequest -Uri $urls[$name] -OutFile $dest -UseBasicParsing
    $size = (Get-Item $dest).Length
    Write-Host "  ok ($size bytes)"
}

Write-Host ""
Write-Host "Done. Bumper plates saved to:"
Write-Host "  $base"
Write-Host ""
Write-Host "If bumper-01 / bumper-02 didn't download, check Higgsfield dashboard"
Write-Host "for jobs 012abf8e and 97420811. Paste the final URLs into this script and rerun."
