# 工具链环境变量配置

## 推荐的 PATH 设置

将以下路径添加到系统 PATH 环境变量的**最前面**：

```
E:\toolbox\bin
```

## PowerShell 配置脚本

```powershell
# 设置工具链环境变量
$toolboxPath = "E:\toolbox\bin"

# 获取当前 PATH
$currentPath = [Environment]::GetEnvironmentVariable("PATH", "User")

# 如果未包含则添加
if (-not ($currentPath -like "*$toolboxPath*")) {
    $newPath = "$toolboxPath;$currentPath"
    [Environment]::SetEnvironmentVariable("PATH", $newPath, "User")
    Write-Host "✅ 已添加工具链路径到 PATH"
} else {
    Write-Host "✅ 工具链路径已在 PATH 中"
}

# 验证
$updatedPath = [Environment]::GetEnvironmentVariable("PATH", "User")
if ($updatedPath -like "*$toolboxPath*") {
    Write-Host "✅ 配置成功"
} else {
    Write-Host "❌ 配置失败"
}
```

## 批处理配置脚本

```batch
@echo off
set TOOLBOX_PATH=E:\toolbox\bin

:: 检查是否已存在
echo %PATH% | findstr /C:"%TOOLBOX_PATH%" >nul
if %ERRORLEVEL% NEQ 0 (
    :: 添加到 PATH
    setx PATH "%TOOLBOX_PATH%;%PATH%"
    echo ✅ 已添加工具链路径到 PATH
) else (
    echo ✅ 工具链路径已在 PATH 中
)
```

## 手动配置步骤

### Windows 10/11:

1. 右键"此电脑" → "属性"
2. 点击"高级系统设置"
3. 点击"环境变量"
4. 在"用户变量"中找到 PATH
5. 点击"编辑"
6. 点击"新建"
7. 输入: `E:\toolbox\bin`
8. 点击"上移"将其移到最顶部
9. 确定保存

### 验证配置

打开新的命令提示符窗口，运行：
```cmd
echo %PATH%
```

应该能看到 `E:\toolbox\bin` 出现在最前面。

## 符号链接创建脚本

```powershell
# 创建符号链接的 PowerShell 脚本
$links = @{
    "go.exe" = "C:\Program Files\Go\bin\go.exe"
    "rustc.exe" = "$env:USERPROFILE\.cargo\bin\rustc.exe"  
    "javac.exe" = "C:\Program Files\Microsoft\jdk-17.0.18.8-hotspot\bin\javac.exe"
    "cmake.exe" = "C:\Program Files\CMake\bin\cmake.exe"
}

foreach ($link in $links.GetEnumerator()) {
    $linkPath = "E:\toolbox\bin\$($link.Key)"
    $targetPath = $link.Value
    
    if (Test-Path $targetPath) {
        if (-not (Test-Path $linkPath)) {
            New-Item -ItemType SymbolicLink -Path $linkPath -Target $targetPath -Force
            Write-Host "✅ 创建符号链接: $($link.Key)"
        } else {
            Write-Host "⚠️  符号链接已存在: $($link.Key)"
        }
    } else {
        Write-Host "❌ 目标不存在: $targetPath"
    }
}
```

## 故障排除

### 问题1: 命令找不到
**解决**: 重启命令提示符或 PowerShell

### 问题2: 权限被拒绝
**解决**: 以管理员身份运行命令提示符

### 问题3: 符号链接创建失败
**解决**: 确保目标文件存在且有读取权限

---
*配置版本: 1.0*
*最后更新: 2026-03-20*