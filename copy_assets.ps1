$assetsDir = "C:\Users\rockw\.gemini\antigravity\scratch\doraemons-pocket\assets"
if (-not (Test-Path $assetsDir)) {
    New-Item -ItemType Directory -Path $assetsDir -Force | Out-Null
}

$srcDir = "C:\Users\rockw\.gemini\antigravity\scratch\doraemons-pocket\stitch-data"
Copy-Item "$srcDir\*.jpg" $assetsDir -Force

# Friendly names for main assets
Copy-Item "$srcDir\1b6a80f5e10548cfaaf3bfb43cbaa057.jpg" "$assetsDir\chassis-optimized.jpg" -Force
Copy-Item "$srcDir\e6c67f1d1e7c49ab99667de4969097ed.jpg" "$assetsDir\chassis-benchmark.jpg" -Force

Get-ChildItem $assetsDir | Select-Object Name, Length | Format-Table -AutoSize
