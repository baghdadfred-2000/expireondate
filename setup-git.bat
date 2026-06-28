@echo off
REM ============================================================
REM  Initialize this folder as a git repo and push to GitHub
REM  Double-click this file, or run it from a terminal in this
REM  folder. Requires Git for Windows (https://git-scm.com).
REM ============================================================

cd /d "%~dp0"

echo === Initializing git repository ===
git init
git branch -M main

echo === Staging all files ===
git add .

echo === Creating initial commit ===
git commit -m "Initial commit: ExpireOnDate site (HTML pages, sitemap, robots, SEO report)"

echo === Adding remote origin ===
git remote add origin https://github.com/baghdadfred-2000/expireondate

echo === Pushing to GitHub ===
git push -u origin main

echo.
echo === Verifying: git remote -v ===
git remote -v
echo.
echo === Verifying: git status ===
git status

echo.
echo Done. Press any key to close.
pause >nul
