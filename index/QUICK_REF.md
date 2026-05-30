# E:\toolbox 工具链快速参考卡

## 🚀 快速开始

### 1. 环境配置
```cmd
E:\toolbox\scripts\setup-env.bat
```

### 2. 健康检查
```cmd
E:\toolbox\scripts\toolchain-check.bat
```

## 🛠️ 核心工具

| 工具 | 命令 | 版本 | 状态 |
|------|------|------|------|
| **Git** | `git` | 最新版 | ✅ |
| **ripgrep** | `rg` | 最新版 | ✅ |
| **GitHub CLI** | `gh` | 最新版 | ✅ |
| **curl** | `curl` | 最新版 | ✅ |
| **wget** | `wget` | 最新版 | ✅ |
| **FFmpeg** | `ffmpeg` | 最新版 | ✅ |
| **7-Zip** | `7z` | 最新版 | ✅ |
| **Python** | `python` | 3.14.3 | ✅ |
| **Node.js** | `node` | 24.14.0 | ✅ |
| **Go** | `go` | 1.26.1 | ✅ |
| **Rust** | `rustc` | 1.94.0 | ✅ |
| **Java** | `javac` | 17.0.18 | ✅ |

## 📁 目录结构

```
E:\toolbox\
├── bin\          # 可执行文件入口
├── doc\          # 文档资料
├── index\        # 索引文件
├── config\       # 配置文件
├── scripts\      # 管理脚本
├── temp\         # 临时文件
├── languages\    # 编程语言
├── runtimes\     # 运行时
├── compilers\    # 编译器
├── build-tools\  # 构建工具
├── utilities\    # 实用工具
├── media\        # 多媒体工具
├── containers\   # 容器工具
├── databases\    # 数据库
├── vcs\          # 版本控制
└── editors\      # 编辑器
```

## 🔧 日常维护

### 更新工具
```cmd
# 检查更新
toolchain-check.bat

# 手动更新各工具
winget upgrade GoLang.Go
winget upgrade Rustlang.Rustup
```

### 添加新工具
1. 下载并安装到对应子目录
2. 在 `E:\toolbox\bin` 创建包装脚本
3. 运行 `setup-env.bat` 更新环境变量

## ⚠️ 注意事项

- 首次配置后需要**重启终端**
- 某些工具可能需要**管理员权限**
- 定期运行健康检查确保工具正常

---
*最后更新: 2026-03-20*
*版本: 1.0*