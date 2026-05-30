@echo off
:: CMake 构建工具包装器（待安装）
if exist "C:\Program Files\CMake\bin\cmake.exe" (
    "C:\Program Files\CMake\bin\cmake.exe" %*
) else (
    echo CMake 未安装，请先安装 CMake
    exit /b 1
)