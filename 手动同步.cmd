@echo off
chcp 65001 >nul
:: =============================================
:: 手动同步.cmd — 输入同步日志并提交到 GitHub
:: 用法: 双击运行，或在此目录下执行
:: =============================================

cd /d "%~dp0"

echo ========================================
echo   E:\toolbox  手动同步
echo ========================================
echo.

:: 输入同步内容
set MSG=
set /p MSG=请输入本次同步说明：

if "%MSG%"=="" (
    echo.
    echo [INFO] 未输入内容，使用默认说明
    set MSG=手动同步 %date% %time%
)

echo.
echo [1/4] git add -A
git add -A

echo [2/4] 检查变更...
git diff --cached --quiet
if %errorlevel% equ 0 (
    echo.
    echo [INFO] 没有检测到变更，无需提交
    echo.
    pause
    exit /b 0
)

echo [3/4] git commit -m "%MSG%"
git commit -m "%MSG%"
if %errorlevel% neq 0 (
    echo.
    echo [ERROR] 提交失败，请检查错误信息
    pause
    exit /b 1
)

echo [4/4] git push
git push origin main
if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo   ✅ 同步完成！
    echo   说明: %MSG%
    echo ========================================
) else (
    echo.
    echo [WARN] 推送失败，请检查网络或 GitHub 认证
    pause
    exit /b 1
)

echo.
pause
exit /b 0
