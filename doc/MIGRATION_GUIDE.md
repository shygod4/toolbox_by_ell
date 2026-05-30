# 工具链迁移脚本

## 功能说明

此脚本用于将分散安装的开发工具迁移到统一的 `E:\toolbox` 目录结构中，并建立符号链接以便统一管理。

## 使用方法

### 1. PowerShell 方式（推荐）

```powershell
# 以管理员身份运行 PowerShell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
.\migrate-toolchain.ps1
```

### 2. 批处理方式

```cmd
migrate-toolchain.bat
```

## 迁移清单

### 第一阶段：核心语言工具

✅ **已完成**
- Python (已存在于用户目录)
- Node.js (已存在于 E:\toolbox\AGENT)

⏳ **待处理**
- Go → `E:\toolbox\languages\go`
- Rust → `E:\toolbox\languages\rust`  
- Java → `E:\toolbox\languages\java`

### 第二阶段：构建工具

⏳ **待安装**
- CMake → `E:\toolbox\build-tools\cmake`
- MSYS2/GCC → `E:\toolbox\compilers\gcc`
- Make → `E:\toolbox\build-tools\make`

### 第三阶段：容器和运行时

⏳ **待安装**
- Docker → `E:\toolbox\containers\docker`
- ImageMagick → `E:\toolbox\media\imagemagick`
- Bun → `E:\toolbox\runtimes\bun`
- Deno → `E:\toolbox\runtimes\deno`

## 目录结构规划

```
E:\toolbox\
├── languages\
│   ├── go\          ← 迁移目标
│   ├── rust\        ← 迁移目标  
│   ├── java\        ← 迁移目标
│   ├── python\      ← 符号链接
│   └── nodejs\      ← 符号链接
├── build-tools\
│   ├── cmake\       ← 迁移目标
│   └── make\        ← 迁移目标
├── compilers\
│   └── gcc\         ← 迁移目标 (MSYS2)
├── containers\
│   └── docker\      ← 迁移目标
├── media\
│   └── imagemagick\ ← 迁移目标
└── runtimes\
    ├── bun\         ← 迁移目标
    └── deno\        ← 迁移目标
```

## 注意事项

1. **备份重要数据**：迁移前请备份相关配置文件
2. **管理员权限**：某些操作需要管理员权限
3. **环境变量**：迁移后需要更新 PATH 环境变量
4. **符号链接**：使用 mklink 或 New-Item 创建符号链接
5. **测试验证**：迁移后运行 `toolchain-check.bat` 验证

## 回滚方案

如遇问题，可通过以下方式回滚：
1. 删除新创建的目录和符号链接
2. 恢复原始 PATH 环境变量
3. 重新安装原位置的工具

---
*脚本版本: 1.0*
*最后更新: 2026-03-20*