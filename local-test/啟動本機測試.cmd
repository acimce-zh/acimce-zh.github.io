@echo off
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js is required for this local test server.
  pause
  exit /b 1
)
node "%~dp0server.mjs" "%~dp0.." 4034
pause
