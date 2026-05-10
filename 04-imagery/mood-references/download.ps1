# OGeez Brand System — Mood Reference Downloader
# Run from PowerShell on Windows. Downloads the four Higgsfield-generated mood plates
# into this folder.

$ErrorActionPreference = "Stop"
$base = $PSScriptRoot

$urls = @{
    "01-bureaucratic-interior.png" = "https://d8j0ntlcm91z4.cloudfront.net/user_32y75T10X3fgRU3N6rW5kYUJ91B/hf_20260510_113934_c81ba336-c52a-4e36-98f7-4955ed2b9f06.png"
    "02-cairo-corniche-dawn.png"   = "https://d8j0ntlcm91z4.cloudfront.net/user_32y75T10X3fgRU3N6rW5kYUJ91B/hf_20260510_113940_994afe58-4af3-401d-91ac-1cd3350f5cef.png"
    "03-riyadh-modernist.png"      = "https://d8j0ntlcm91z4.cloudfront.net/user_32y75T10X3fgRU3N6rW5kYUJ91B/hf_20260510_113945_213ce9b9-b91a-41fc-94c4-0724caaf1995.png"
    "04-clapper-discipline.png"    = "https://d8j0ntlcm91z4.cloudfront.net/user_32y75T10X3fgRU3N6rW5kYUJ91B/hf_20260510_113950_5de33696-8e9d-498f-83d5-0fe1f2f2c9c2.png"
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
Write-Host "Done. Mood references saved to:"
Write-Host "  $base"
