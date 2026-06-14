@echo off
cd /d %~dp0
echo Starting local server at http://localhost:8765
python -m http.server 8765
pause
