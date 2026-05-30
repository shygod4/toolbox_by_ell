@echo off
:: E:\toolbox 环境变量配置脚本

set TOOLBOX_PATH=E:\toolbox\bin

echo ========================================
echo E:\toolbox 环境变量配置工具
echo ========================================
echo.

:: 检查是否已存在
echo [1/3] 检查当前 PATH 配置...
echo %PATH% | findstr /C:"%TOOLBOX_PATH%" >nul
if %ERRORLEVEL% EQU 0 (
    echo ✅ 工具链路径已在 PATH 中
    goto :verify
)

:: 添加到 PATH
echo [2/3] 添加工具链路径到 PATH...
setx PATH "%TOOLBOX_PATH%;%PATH%" >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo ✅ 成功添加到用户 PATH
) else (
    echo ❌ 添加失败，请以管理员身份运行
    pause
    exit /b 1
)

:verify
:: 验证配置
echo [3/3] 验证配置...
echo.
echo 当前 PATH 前几项:
echo %PATH% | cut -d ";" -f 1-3
echo.
echo 测试核心工具:
where go >nul 2>&1 && echo ✅ Go 可用 || echo ❌ Go 不可用
where rustc >nul 2>&1 && echo ✅ Rust 可用 || echo ❌ Rust 不可用
where javac >nul 2>&1 && echo ✅ Java 可用 || echo ❌ Java 不可用

echo.
echo ========================================
echo 配置完成！
echo 请重启命令提示符使更改生效
echo ========================================
echo.
pause