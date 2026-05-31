@echo off
:: =============================================
:: auto-sync.bat — 登录时自动同步工具箱目录（位于 sync\）
:: 配合 Windows 计划任务使用
:: =============================================
cd /d "%~dp0.."

:: 拉取远程最新变更（避免冲突）
git pull --rebase origin main 2>nul

:: 添加并提交变更
git add -A
git diff --cached --quiet
if %errorlevel% equ 0 (
    exit /b 0
)

git commit -m "自动同步 %date% %time%"
git push origin main

exit /b 0
