$dir = "C:\Users\rockw\.gemini\antigravity\scratch\doraemons-pocket\stitch-data"
$outDir = "C:\Users\rockw\.gemini\antigravity\scratch\doraemons-pocket\clean-screens"

if (-not (Test-Path $outDir)) {
    New-Item -ItemType Directory -Path $outDir -Force | Out-Null
}

$htmlFiles = Get-ChildItem -Path $dir -Filter "*.html"

foreach ($file in $htmlFiles) {
    $content = Get-Content $file.FullName -Raw
    try {
        $json = $content | ConvertFrom-Json
        if ($json.dataString) {
            $outFile = Join-Path $outDir ($file.BaseName + ".html")
            Set-Content -Path $outFile -Value $json.dataString -Encoding utf8
            Write-Host "Extracted clean HTML: $($file.BaseName)"
        } else {
            Copy-Item $file.FullName (Join-Path $outDir $file.Name) -Force
        }
    } catch {
        Copy-Item $file.FullName (Join-Path $outDir $file.Name) -Force
    }
}

Write-Host "All clean screens extracted successfully!"
