@echo off
chcp 65001 >nul
title Skills Manager
set PATH=%USERPROFILE%\.cargo\bin;%PATH%
echo [OK] Checking environment...
cargo --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Rust not found
    pause
    exit /b 1
)
node --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Node.js not found
    pause
    exit /b 1
)
echo [OK] Starting Skills Manager...
call npm run tauri:dev