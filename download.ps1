$apiKey = "AQ.Ab8RN6JOOsJflYmtHGOYIO0RVGjJTfve0Djf0bWToy5HgM6Ovw"
$projectId = "369445741058905316"
$outDir = "C:\Users\rockw\.gemini\antigravity\scratch\doraemons-pocket\stitch-data"

if (-not (Test-Path $outDir)) {
    New-Item -ItemType Directory -Path $outDir -Force | Out-Null
}

$headers = @{ "X-Goog-Api-Key" = $apiKey }
$screensUrl = "https://stitch.googleapis.com/v1/projects/$projectId/screens"
$res = Invoke-RestMethod -Uri $screensUrl -Headers $headers

Write-Host "Total screens found: $($res.screens.Count)"

foreach ($s in $res.screens) {
    Write-Host "Fetching screen: $($s.id) - $($s.title)"
    $screenData = Invoke-RestMethod -Uri "https://stitch.googleapis.com/v1/$($s.name)" -Headers $headers
    $jsonFile = Join-Path $outDir "$($s.id).json"
    $screenData | ConvertTo-Json -Depth 6 | Set-Content -Path $jsonFile -Encoding utf8
    
    if ($screenData.htmlCode -and $screenData.htmlCode.downloadUrl) {
        $htmlFile = Join-Path $outDir "$($s.id).html"
        Invoke-WebRequest -Uri $screenData.htmlCode.downloadUrl -Headers $headers -OutFile $htmlFile
        Write-Host "  -> Saved HTML: $htmlFile"
    }
    if ($screenData.screenshot -and $screenData.screenshot.downloadUrl) {
        $imgFile = Join-Path $outDir "$($s.id).jpg"
        Invoke-WebRequest -Uri $screenData.screenshot.downloadUrl -Headers $headers -OutFile $imgFile
        Write-Host "  -> Saved Screenshot: $imgFile"
    }
}

Write-Host "All screens downloaded successfully!"
