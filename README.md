# E:\toolbox · 便携工具箱

个人开发与生产力工具箱，所有工具安装在 `E:\toolbox\`，统一管理、便携使用。
本仓库只追踪**目录结构和元数据**，不包含二进制文件。

---

## 快速入口

| 你想要的 | 位置 |
|---------|------|
| 完整工具清单 | [`CATALOG.md`](CATALOG.md) |
| 环境配置说明 | [`config/ENV_SETUP.md`](config/ENV_SETUP.md) |
| 更新操作指南 | [`HOWTO_UPDATE.txt`](HOWTO_UPDATE.txt) |
| 快速参考卡 | [`index/QUICK_REF.md`](index/QUICK_REF.md) |

## 目录结构概览

```
E:\toolbox\
├── CATALOG.md             工具完整清单
├── .gitignore             白名单规则
├── bin\                   bat 包装器入口
├── sync\                  自动同步（auto-sync / tool-log）
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

### 手动记录变更（推荐日常使用）

每次手动添加/更新/移除工具后，用 `tool-log` 记录一条说明：

```powershell
tool-log 新增OrcaSlicer 2.2.0
tool-log 更新ffmpeg到7.1
tool-log 移除过时工具X
```

流程：`git add -A` → `git commit "你的说明"` → `git push` 到 GitHub。

### 自动同步（开机即用备选）

Windows 计划任务 `AutoSync-Toolbox` 在每次登录后延迟 1 分钟自动触发：

```
sync\auto-sync.bat
├── git pull --rebase      拉取远程最新（避免冲突）
├── git add -A             暂存本地变更
├── git diff --cached      检查是否有变更
├── git commit -m "自动同步 2026/05/31 12:33"    有变更才提交
└── git push               推送到 GitHub
```

> **两者关系：** 不冲突。`tool-log` 是主动提交（含自定义说明），`auto-sync` 是保底兜底（登录后自动同步一切）。如果日常用 `tool-log` 记录，登录时往往没有新变更，`auto-sync` 会检测到无变更后直接跳过。

### 管理自动同步

```powershell
# 查看任务状态
schtasks /query /tn "AutoSync-Toolbox" /fo LIST /v

# 禁用（不想自动同步时）
schtasks /change /tn "AutoSync-Toolbox" /disable

# 重新启用
schtasks /change /tn "AutoSync-Toolbox" /enable

# 立即手动触发
sync\auto-sync.bat
```

### 冲突处理

如果自动同步时遇到 `git pull --rebase` 冲突，错误会吞到 `2>nul` 静默跳过，不会弹窗打断操作。后续手动解决即可：

```powershell
cd E:\toolbox
git status                     # 查看冲突文件
# 编辑冲突文件 → 保存
git add <冲突文件>
git rebase --continue
git push origin main
```

---

*仓库由 sync\tool-log.cmd 管理，CATALOG.md 由人工维护。*
