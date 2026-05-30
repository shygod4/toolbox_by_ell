# E:\toolbox · 便携工具箱

个人开发与生产力工具箱，所有工具安装在 `E:\toolbox\`，统一管理、便携使用。
本仓库只追踪**目录结构和元数据**，不包含二进制文件。

---

## 快速入口

| 你想要的 | 位置 |
|---------|------|
| 完整工具清单 | [`CATALOG.md`](CATALOG.md) |
| 环境配置说明 | [`config/ENV_SETUP.md`](config/ENV_SETUP.md) |
| 快速参考卡 | [`index/QUICK_REF.md`](index/QUICK_REF.md) |

## 目录结构概览

```
E:\toolbox\
├── CATALOG.md             工具完整清单
├── .gitignore             白名单规则
├── bin\                   bat 包装器入口
├── scripts\               管理脚本
├── config\                配置文件
├── doc\                   文档资料
├── index\                 索引与元数据
│
├── ▸ 开发工具链           git\ ripgrep\ gh\ curl\ wget\ ...
├── ▸ 媒体工具             ffmpeg\ PotPlayer\ obs-studio\ ...
├── ▸ 系统工具             Everything\ DiskGenius\ ...
├── ▸ 网络 & 远程          MobaXterm\ Tailscale\ ...
└── ▸ ...
```

## 日常用法

```powershell
tool-log "做了什么"
```

自动暂存 → commit → push 到 GitHub。

## 自动同步

Windows 计划任务 `ToolboxAutoSync` 在每次登录后自动运行。

---

*仓库由 tool-log.cmd 管理，CATALOG.md 由人工维护。*
