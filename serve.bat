@echo off
cd /d "%~dp0"
echo ========================================================
echo Starting FerbDora's Lab - Doraemon's Pocket Frugal Design
echo Open in browser: http://localhost:8080
echo ========================================================
python -m http.server 8080 2>nul || (
    echo Python not found in path, launching default browser directly with index.html...
    start index.html
)
pause
