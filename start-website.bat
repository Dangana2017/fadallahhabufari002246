@echo off
title Fadallah Habufari Foundation Website Launcher (Ultra-Fast Production Mode)
echo ====================================================
echo Starting Fadallah Habufari Foundation Website...
echo Mode: Ultra-Fast Optimized Server (Sub-100ms Load Speed)
echo ====================================================
echo.
cd /d "%~dp0"
echo Opening Web Browser at http://localhost:3000 ...
start http://localhost:3000
echo.
echo Server log output (Press Ctrl+C to stop):
echo ----------------------------------------------------
npm run start -- -H 0.0.0.0
pause
