# E:\toolbox · 工具箱总目录

> **版本:** 1.0 · **最后更新:** 2026-05-30 ·
> 本目录是工具箱的长期伴随文档，随工具箱的增删改而更新。**每次新增、移除或搬迁工具后，请同步修改此文件。**

---

## 总览

```
E:\toolbox\
├── 📂 CATALOG.md          ← 本文档，工具箱总目录
├── 📂 index\              索引与元数据
├── 📂 config\             配置文件
├── 📂 scripts\            管理脚本
├── 📂 doc\                文档资料
├── 📂 bin\                bat 包装器入口
├── 📂 temp\               临时文件
│
├── ▸ 开发工具链           git\  ripgrep\  gh\  curl\  wget\  7-Zip\
│                            AGENT\node_js\  →bin\ (go.bat / rustc.bat / ...)
│
├── ▸ 媒体工具             ffmpeg\  PotPlayer\  obs-studio\  PixPin\
│                            motrix\  kikoplay\  MUSESCORE\  file converter\
│                            MagicEXIF\  livehime\
│
├── ▸ 系统工具             SpaceSniffer\  Everything\  DiskGenius\
│                            Dism++10.1.1002.1B\  DriverGenius\
│                            Mem Reduct\  ETAlien Booster\
│
├── ▸ 网络 & 远程          sSH\MobaXterm\  Tailscale→  todesk\  spacedesk\
│                            netlimiter\
│
├── ▸ 代理 & 加速          clash\  cc_switch\
│
├── ▸ 游戏 & 硬件监控      MSI Afterburner\  RivaTuner Statistics Server\
│                            KeyStats-Windows-1.41\  bettergi\
│                            Flydigi Space Station\  GameViewer\
│                            MuMu Player 12\  Twitch Drops Miner\
│
├── ▸ Android & 手机       搞机工具箱11.0.1\  i4\
│
├── ▸ 办公 & 效率          Feishu\  SogouInput\
│
├── ▸ 设计与制造           OrcaSlicer\  DJI Education Hub\  JDPaint\
│                            ugeeTablet\  MUSESCORE\
│
└── ▸ 其他                 图吧工具箱202507\  Apollo\  baidu\  video_download\
                             弹幕姬\ 点歌姬\ 课表\ GenP\ dlss\ D21_3M Keyboard\
                             THINKBOOK\
```

---

## 一、开发工具链

### 版本控制

| 工具 | 位置 | 大小 | 说明 |
|------|------|------|------|
| **Git** | `E:\toolbox\git\` | 365 MB | v2.54.0，含 git bash mingw64 环境 |

### 搜索 & CLI

| 工具 | 位置 | 说明 |
|------|------|------|
| **ripgrep** | `E:\toolbox\ripgrep\ripgrep-14.1.0-x86_64-pc-windows-msvc\` | v14.1.0 |
| **GitHub CLI** | `E:\toolbox\gh\bin\` | v2.58.0 |

### 下载工具

| 工具 | 位置 | 版本 |
|------|------|------|
| **curl** | `E:\toolbox\curl\curl-8.11.1_2-win64-mingw\bin\` | v8.11.1 |
| **wget** | `E:\toolbox\wget\` | v1.21.4 |
| **aria2** | `E:\toolbox\motrix\resources\engine\` | v1.36.0 (随 Motrix 分发) |

### 压缩

| 工具 | 位置 | 大小 |
|------|------|------|
| **7-Zip** | `E:\toolbox\7-Zip\` | 5.9 MB | v25.01 |

### 编程语言 & 运行时

| 语言 | 真实路径 | 包装器 | 版本 |
|------|---------|--------|------|
| **Python** | 系统 PATH (`C:\Program Files\Python\Python314`) | 无 | v3.14.3 |
| **Node.js** | `E:\toolbox\AGENT\node_js\` | 无 | v24.14.0 |
| **Go** | `C:\Program Files\Go\` | `E:\toolbox\bin\go.bat` | v1.26.1 |
| **Rust** | `%USERPROFILE%\.cargo\bin\` | `E:\toolbox\bin\rustc.bat` + `cargo.bat` | v1.94.0 |
| **Java (JDK 17)** | `C:\Program Files\Microsoft\jdk-17.0.18.8-hotspot\` | `E:\toolbox\bin\java.bat` + `javac.bat` | v17.0.18 |
| **CMake** | `C:\Program Files\CMake\` | `E:\toolbox\bin\cmake.bat` | — |

> Node.js 自带 npm (v11.9.0)，通过 corepack 管理 pnpm 和 yarn。

### 分类目录（预留扩展）
以下目录采用 `bin/` `doc/` `versions/` 结构，目前为空，供工具链扩容使用：
`compilers\` `editors\` `languages\` `runtimes\` `build-tools\` `utilities\` `containers\` `databases\` `vcs\` `media\`

---

## 二、媒体 & 影音

| 工具 | 位置 | 大小 | 说明 |
|------|------|------|------|
| **FFmpeg** | `E:\toolbox\ffmpeg\ffmpeg-master-latest-win64-gpl\bin\` | 586 MB | 全功能多媒体编解码工具集 |
| **OBS Studio** | `E:\toolbox\obs-studio\bin\64bit\` | 460 MB | 直播推流/录屏，含 `obs64.exe` |
| **PotPlayer** | `E:\toolbox\PotPlayer\` | 195 MB | 本地视频播放器 |
| **PixPin** | `E:\toolbox\PixPin\` | 158 MB | 截图/贴图/OCR 工具 |
| **livehime** | `E:\toolbox\livehime\` | 1.4 GB | 哔哩哔哩直播姬 |
| **Motrix** | `E:\toolbox\motrix\` | — | 全协议下载工具 (aria2 前端) |
| **kikoplay** | `E:\toolbox\kikoplay\` | — | 弹幕式本地视频播放器 |
| **MUSESCORE** | `E:\toolbox\MUSESCORE\` | — | 乐谱编辑/播放器 |
| **File Converter** | `E:\toolbox\file converter\` | — | 右键菜单格式转换 |
| **MagicEXIF** | `E:\toolbox\MagicEXIF\` | — | EXIF 元数据编辑 |

---

## 三、系统工具

| 工具 | 位置 | 大小 | 说明 |
|------|------|------|------|
| **DiskGenius** | `E:\toolbox\DiskGenius\` | — | 磁盘分区/数据恢复 |
| **Dism++** | `E:\toolbox\Dism++10.1.1002.1B\` | — | 系统优化/镜像工具 |
| **DriverGenius** | `E:\toolbox\DriverGenius\` | — | 驱动管理/更新 |
| **Everything** | `E:\toolbox\Everything\` | — | 全盘文件即时搜索 |
| **SpaceSniffer** | `E:\toolbox\SpaceSniffer\` | — | 磁盘空间可视化分析 |
| **Mem Reduct** | `E:\toolbox\Mem Reduct\` | — | 内存清理工具 |
| **ETAlien Booster** | `E:\toolbox\ETAlien Booster\` | — | 系统加速工具 |

---

## 四、网络 & 远程

| 工具 | 位置 | 说明 |
|------|------|------|
| **MobaXterm** | `E:\toolbox\sSH\MobaXterm\` | SSH/RDP/X11 远程终端 |
| **Tailscale** | `E:\toolbox\Tailscale\` (→ `C:\Program Files\Tailscale\` 符号链接) | v1.96.3，组网/WireGuard VPN |
| **ToDesk** | `E:\toolbox\todesk\` | 远程桌面协助 |
| **spacedesk** | `E:\toolbox\spacedesk\` | 局域网副屏扩展 |
| **NetLimiter** | `E:\toolbox\netlimiter\` | 网络流量监控/限速 |

---

## 五、代理 & 加速

| 工具 | 位置 | 说明 |
|------|------|------|
| **Clash Verge** | `E:\toolbox\clash\` | v169 MB，Clash 代理客户端 + verge-mihomo 核心 |
| **cc_switch** | `E:\toolbox\cc_switch\` | 代理快速切换脚本/工具 |

---

## 六、游戏 & 硬件监控

| 工具 | 位置 | 大小 | 说明 |
|------|------|------|------|
| **MSI Afterburner** | `E:\toolbox\MSI Afterburner\` | — | 显卡超频/监控 |
| **RivaTuner SS** | `E:\toolbox\RivaTuner Statistics Server\` | — | 帧率显示/OSD 服务器 |
| **KeyStats** | `E:\toolbox\KeyStats-Windows-1.41\` | — | 键盘/鼠标按键统计 |
| **bettergi** | `E:\toolbox\bettergi\` | — | 游戏辅助工具 |
| **Flydigi Space Station** | `E:\toolbox\Flydigi Space Station\` | — | 飞智手柄驱动/配置 |
| **GameViewer** | `E:\toolbox\GameViewer\` | — | 游戏串流/远程 |
| **MuMu Player 12** | `E:\toolbox\MuMu Player 12\` | **18 GB** | 网易安卓模拟器 |
| **Twitch Drops Miner** | `E:\toolbox\Twitch Drops Miner\` | — | Twitch 直播互动辅助工具 |

---

## 七、Android & 手机工具

| 工具 | 位置 | 说明 |
|------|------|------|
| **搞机工具箱** | `E:\toolbox\搞机工具箱11.0.1\` | ADB 图形前端，含 `Connector.cmd` |
| **i4Tools** | `E:\toolbox\i4\i4Tools9\` | 爱思助手 (iOS 设备管理) |

---

## 八、办公 & 效率

| 工具 | 位置 | 大小 | 说明 |
|------|------|------|------|
| **飞书 Feishu** | `E:\toolbox\Feishu\` | 3.1 GB | 字节跳动办公套件 |
| **搜狗输入法** | `E:\toolbox\SogouInput\` | — | 便携版搜狗输入法 |
| **PixPin** (见媒体) | — | — | 截图工具，兼具贴图/OCR |

---

## 九、设计与制造

| 工具 | 位置 | 说明 |
|------|------|------|
| **OrcaSlicer** | `E:\toolbox\OrcaSlicer\` | 3D 打印切片软件 |
| **DJI Education Hub** | `E:\toolbox\DJI Education Hub\` | 大疆教育/机甲大师 RoboMaster |
| **JDPaint** | `E:\toolbox\JDPaint\` | 精雕 CNC 雕刻软件 |
| **ugeeTablet** | `E:\toolbox\ugeeTablet\` | 友基数位板驱动 |

---

## 十、其他工具

| 工具 | 位置 | 说明 |
|------|------|------|
| **图吧工具箱** | `E:\toolbox\图吧工具箱202507\` | 450 MB，硬件检测/DIY 工具合集 |
| **Apollo (Sunshine)** | `E:\toolbox\Apollo\` | 50 MB，开源游戏串流服务器 |
| **百度网盘** | `E:\toolbox\baidu\` | 百度网盘客户端 |
| **video_download** | `E:\toolbox\video_download\` | 多媒体下载工具集 |
| **GenP** | `E:\toolbox\GenP\` | Adobe 套件配置工具 |
| **dlss** | `E:\toolbox\dlss\` | DLSS 相关文件 |
| **D21_3M Keyboard** | `E:\toolbox\D21_3M Keyboard\` | D21_3M 键盘驱动 |
| **THINKBOOK** | `E:\toolbox\THINKBOOK\` | 联想 ThinkBook 驱动/工具 |
| **弹幕姬** | `E:\toolbox\弹幕姬\` | B 站直播弹幕互动工具 |
| **点歌姬** | `E:\toolbox\点歌姬\` | 直播点歌工具 |
| **课表** | `E:\toolbox\课表\` | 课程表 App |

---

## 索引与配置

| 文件 | 路径 | 说明 |
|------|------|------|
| **TOOLCHAIN_INDEX** | `E:\toolbox\index\TOOLCHAIN_INDEX.md` | 旧版工具链索引（内容已过时，仅供参考） |
| **QUICK_REF** | `E:\toolbox\index\QUICK_REF.md` | 旧版快速参考卡 |
| **ENV_SETUP** | `E:\toolbox\config\ENV_SETUP.md` | 环境变量配置说明 |
| **MIGRATION_GUIDE** | `E:\toolbox\doc\MIGRATION_GUIDE.md` | 工具迁移指南 |
| **setup-env.bat** | `E:\toolbox\scripts\setup-env.bat` | 环境设置脚本 |
| **toolchain-check.bat** | `E:\toolbox\scripts\toolchain-check.bat` | 工具链健康检查 |
| **bin/\*.bat** | `E:\toolbox\bin\` | Go/Rust/Java/CMake 包装器 |
| **ep_setup.exe** | `E:\toolbox\` (根目录) | Everything 搜索工具安装程序 |

---

## 附录

### A. 修改记录

| 日期 | 操作 | 说明 |
|------|------|------|
| 2025-03-20 | 初始结构创建 | 建立分类目录体系 (bin/doc/index/config/...) |
| 2026-05-30 | 全面盘点 | 创建 `CATALOG.md`，首次对全部工具实盘清点 |

> **关于修改留痕**：工具箱根目录未纳入 Git 版本管理。若需自动追踪变更，建议将 `E:\toolbox` 初始化为 Git 仓库，或使用工具自身版本号。本目录作为人工维护的清单，变更留痕依赖于每次修改后的手动更新。建议在**新增/移除工具时同步更新此文件**并在上方表格追加记录。

### B. 占比 TOP5（按磁盘占用）

| 排名 | 工具 | 大小 |
|:----:|------|:----:|
| 1 | MuMu Player 12 (安卓模拟器) | 18 GB |
| 2 | 飞书 Feishu | 3.1 GB |
| 3 | livehime (B站直播姬) | 1.4 GB |
| 4 | PowerToys | 993 MB |
| 5 | FFmpeg | 586 MB |

> 注：MuMu Player 的 18GB 中包含安卓虚拟机镜像，属正常占用。

### C. 路径速查

```
# 已加入 PATH 的工具入口
E:\toolbox\bin\                          # .bat 包装器
E:\toolbox\git\cmd\                      # git.exe
E:\toolbox\ripgrep\ripgrep-14.1.0-x86_64-pc-windows-msvc\  # rg.exe
E:\toolbox\gh\bin\                       # gh.exe
E:\toolbox\curl\curl-8.11.1_2-win64-mingw\bin\  # curl.exe
E:\toolbox\wget\                         # wget.exe
E:\toolbox\7-Zip\                        # 7z.exe
E:\toolbox\ffmpeg\ffmpeg-master-latest-win64-gpl\bin\  # ffmpeg.exe
E:\toolbox\AGENT\node_js\                # node.exe / npm
```

---

*本目录由人工维护，以 `E:\toolbox\` 实际内容为准。*
