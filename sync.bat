@echo off
title Syncing Wedding Card to GitHub
echo ==============================================
echo   Syncing Zaynab ^& Tawhid Wedding Card to GitHub
echo ==============================================
echo.
git add .
git diff --quiet && git diff --staged --quiet
if %errorlevel% equ 0 (
    echo [info] No new changes to commit. Everything is up to date!
) else (
    git commit -m "update: wedding invitation updates %date% %time%"
    echo [info] Changes committed.
)
echo.
echo Pushing to GitHub (https://github.com/tawhid2005/Zynab-Tawhid-Wedding)...
git push origin main
echo.
echo ==============================================
echo   SUCCESS! Updated on GitHub successfully.
echo ==============================================
timeout /t 3
