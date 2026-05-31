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
├── CATALOG.md    工具总清单
├── .gitignore    白名单规则
├── HOWTO_UPDATE.txt  更新操作指南
├── bin\          bat 包装器入口
├── sync\         自动同步（auto-sync / tool-log）
├── scripts\      管理脚本（setup-env / toolchain-check）
├── config\       配置文件
├── doc\          文档资料
├── index\        索引
└── temp\         临时文件
```

## 🔧 日常维护

### 记录变更
```cmd
tool-log 新增了某某工具
```

### 检查工具链
```cmd
toolchain-check.bat
```

### 设置环境变量
```cmd
setup-env.bat
```

### 添加新工具
1. 下载并安装到对应子目录
2. 在 `E:\toolbox\bin` 创建包装脚本
3. 运行 `setup-env.bat` 更新环境变量
4. 用 `tool-log "新增xxx"` 提交记录

## ⚠️ 注意事项

- 首次配置后需要**重启终端**
- 某些工具可能需要**管理员权限**
- 定期运行健康检查确保工具正常

---
*最后更新: 2026-05-31*
*版本: 1.1*