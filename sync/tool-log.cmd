@echo off
:: =============================================
:: tool-log.cmd — 工具箱变更记录 & 自动推送（位于 sync\）
:: 用法: tool-log "变更说明"
:: =============================================

set MSG=%*
cd /d "%~dp0.."

if "%MSG%"=="" (
    echo 用法: tool-log "新增xxx" / "更新xxx到v2.0" / "移除xxx"
    exit /b 1
)

:: 添加变更（忽略 .gitkeep 占位文件）
git add -A

:: 检查是否有变更需要提交
git diff --cached --quiet
if %errorlevel% equ 0 (
    echo [INFO] 没有检测到变更
    exit /b 0
)

:: 提交并推送
git commit -m "%MSG%"
if %errorlevel% neq 0 (
    echo [ERROR] 提交失败
    exit /b 1
)

echo [OK] 已提交: %MSG%

:: 推送到 GitHub
git push origin main
if %errorlevel% equ 0 (
    echo [OK] 已推送到 GitHub
) else (
    echo [WARN] 推送失败，请检查网络或 GitHub 认证
)

exit /b 0
