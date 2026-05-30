# E:\toolbox 工具链索引

## 目录结构

```
E:\toolbox\
├── bin\                    # 可执行文件符号链接目录
├── doc\                    # 文档和说明
├── index\                  # 索引和元数据
├── config\                 # 配置文件
├── scripts\                # 脚本工具
├── temp\                   # 临时文件
│
├── languages\              # 编程语言
│   ├── go\                # Go 语言
│   ├── rust\              # Rust 语言
│   ├── python\            # Python 运行时
│   ├── nodejs\            # Node.js 运行时
│   └── java\              # Java JDK
│
├── runtimes\               # 运行时环境
│   ├── dotnet\            # .NET 运行时
│   ├── php\               # PHP 运行时
│   └── ruby\              # Ruby 运行时
│
├── compilers\              # 编译器
│   ├── msvc\              # Microsoft Visual C++
│   ├── gcc\               # GNU Compiler Collection
│   ├── clang\             # LLVM Clang
│   └── mingw\             # MinGW-w64
│
├── build-tools\            # 构建工具
│   ├── cmake\             # CMake 构建系统
│   ├── make\              # GNU Make
│   ├── ninja\             # Ninja 构建工具
│   └── msbuild\           # Microsoft Build Engine
│
├── utilities\              # 实用工具
│   ├── git\               # Git 版本控制
│   ├── ripgrep\           # ripgrep 搜索工具
│   ├── gh\                # GitHub CLI
│   ├── curl\              # curl 下载工具
│   ├── wget\              # wget 下载工具
│   ├── ffmpeg\            # FFmpeg 多媒体处理
│   ├── 7zip\              # 7-Zip 压缩工具
│   └── adb\               # Android Debug Bridge
│
├── media\                  # 多媒体工具
│   ├── imagemagick\       # ImageMagick 图像处理
│   ├── potplayer\         # PotPlayer 媒体播放器
│   └── obs-studio\        # OBS Studio 录屏直播
│
├── containers\             # 容器工具
│   ├── docker\            # Docker 容器平台
│   └── podman\            # Podman 容器引擎
│
├── databases\              # 数据库工具
│   ├── mysql\             # MySQL 数据库
│   ├── postgresql\        # PostgreSQL 数据库
│   └── mongodb\           # MongoDB 数据库
│
├── vcs\                    # 版本控制系统
│   ├── git\               # Git
│   ├── svn\               # Subversion
│   └── mercurial\         # Mercurial
│
└── editors\                # 编辑器
    ├── vscode\            # Visual Studio Code
    ├── vim\               # Vim 编辑器
    └── emacs\             # Emacs 编辑器
```

## 工具链清单

### 已安装的核心工具

| 类别 | 工具 | 版本 | 路径 | 状态 |
|------|------|------|------|------|
| **版本控制** | Git | 最新版 | `E:\toolbox\git` | ✅ |
| **搜索工具** | ripgrep | 最新版 | `E:\toolbox\ripgrep` | ✅ |
| **GitHub** | GitHub CLI | 最新版 | `E:\toolbox\gh` | ✅ |
| **下载工具** | curl | 最新版 | `E:\toolbox\curl` | ✅ |
| **下载工具** | wget | 最新版 | `E:\toolbox\wget` | ✅ |
| **多媒体** | FFmpeg | 最新版 | `E:\toolbox\ffmpeg` | ✅ |
| **压缩工具** | 7-Zip | 最新版 | `E:\toolbox\7-Zip` | ✅ |
| **调试工具** | ADB | 最新版 | `E:\toolbox\MuMu Player 12\nx_main\adb.exe` | ✅ |
| **编程语言** | Python | 3.14.3 | `C:\Users\12594\AppData\Local\Programs\Python\Python314` | ✅ |
| **编程语言** | Node.js | 24.14.0 | `E:\toolbox\AGENT\node_js` | ✅ |
| **编程语言** | Go | 1.26.1 | `C:\Program Files\Go` | ✅ (待迁移) |
| **编程语言** | Rust | 1.29.0 | `C:\Users\12594\.cargo` | ✅ (待迁移) |
| **编程语言** | Java | 17.0.18 | `C:\Program Files\Microsoft\jdk-17.0.18.8-hotspot` | ✅ (待迁移) |

### 待迁移工具

| 类别 | 工具 | 当前位置 | 计划迁移位置 |
|------|------|----------|--------------|
| **构建工具** | CMake | 待安装 | `E:\toolbox\build-tools\cmake` |
| **容器** | Docker | 待安装 | `E:\toolbox\containers\docker` |
| **图像处理** | ImageMagick | 待安装 | `E:\toolbox\media\imagemagick` |
| **运行时** | Bun | npm 全局 | `E:\toolbox\runtimes\bun` |
| **运行时** | Deno | npm 全局 | `E:\toolbox\runtimes\deno` |

## 使用说明

### 环境变量配置

将以下路径添加到系统 PATH 环境变量开头：
```
E:\toolbox\bin
```

### 符号链接创建

运行脚本自动创建符号链接：
```powershell
# PowerShell 脚本示例
New-Item -ItemType SymbolicLink -Path "E:\toolbox\bin\go.exe" -Target "C:\Program Files\Go\bin\go.exe"
```

### 快速验证

```bash
# 验证核心工具
toolchain-check.bat
```

## 维护计划

- [ ] 将分散安装的工具迁移到统一目录
- [ ] 创建自动化部署脚本
- [ ] 建立版本管理和更新机制
- [ ] 完善文档和使用指南

---
*最后更新: 2026-03-20*