@echo off
:: E:\toolbox 工具链健康检查脚本
:: 用于快速验证所有工具是否正常工作

echo ========================================
echo E:\toolbox 工具链健康检查
echo ========================================
echo.

set ERROR_COUNT=0

:: 检查核心工具
echo [1/12] 检查 Git...
git --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo ✅ Git 正常
    git --version | findstr "version"
) else (
    echo ❌ Git 未找到或异常
    set /a ERROR_COUNT+=1
)
echo.

echo [2/12] 检查 ripgrep...
rg --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo ✅ ripgrep 正常
    rg --version | findstr "ripgrep"
) else (
    echo ❌ ripgrep 未找到或异常
    set /a ERROR_COUNT+=1
)
echo.

echo [3/12] 检查 GitHub CLI...
gh --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo ✅ GitHub CLI 正常
    gh --version | findstr "gh version"
) else (
    echo ❌ GitHub CLI 未找到或异常
    set /a ERROR_COUNT+=1
)
echo.

echo [4/12] 检查 curl...
curl --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo ✅ curl 正常
    curl --version | findstr "curl"
) else (
    echo ❌ curl 未找到或异常
    set /a ERROR_COUNT+=1
)
echo.

echo [5/12] 检查 wget...
wget --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo ✅ wget 正常
    wget --version | findstr "GNU Wget"
) else (
    echo ❌ wget 未找到或异常
    set /a ERROR_COUNT+=1
)
echo.

echo [6/12] 检查 FFmpeg...
ffmpeg -version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo ✅ FFmpeg 正常
    ffmpeg -version | findstr "ffmpeg"
) else (
    echo ❌ FFmpeg 未找到或异常
    set /a ERROR_COUNT+=1
)
echo.

echo [7/12] 检查 7-Zip...
7z 2>nul | findstr "7-Zip" >nul
if %ERRORLEVEL% EQU 0 (
    echo ✅ 7-Zip 正常
    7z | findstr "7-Zip" | head -1
) else (
    echo ❌ 7-Zip 未找到或异常
    set /a ERROR_COUNT+=1
)
echo.

echo [8/12] 检查 Python...
python --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo ✅ Python 正常
    python --version
) else (
    echo ❌ Python 未找到或异常
    set /a ERROR_COUNT+=1
)
echo.

echo [9/12] 检查 Node.js...
node --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo ✅ Node.js 正常
    node --version
) else (
    echo ❌ Node.js 未找到或异常
    set /a ERROR_COUNT+=1
)
echo.

echo [10/12] 检查 Go...
go version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo ✅ Go 正常
    go version
) else (
    echo ⚠️  Go 未找到（可能需要重启终端）
)
echo.

echo [11/12] 检查 Rust...
rustc --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo ✅ Rust 正常
    rustc --version
) else (
    echo ⚠️  Rust 未找到（可能需要重启终端）
)
echo.

echo [12/12] 检查 Java...
javac -version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo ✅ Java 正常
    javac -version
) else (
    echo ⚠️  Java 未找到（可能需要重启终端）
)
echo.

echo ========================================
echo 检查完成
echo ========================================
echo 错误数量: %ERROR_COUNT%
if %ERROR_COUNT% EQU 0 (
    echo 🎉 所有工具正常！
) else (
    echo ⚠️  发现 %ERROR_COUNT% 个问题，请检查上述错误项
)
echo.
pause