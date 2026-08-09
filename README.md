# Codex Dream Skin — 个人主题仓库

基于 [Codex Dream Skin](https://github.com/Fei-Away/Codex-Dream-Skin) 的个人定制主题，包含四个从 Wallpaper Engine 壁纸制作的自定义背景：

- `desktop-wallpaper-codex-skin/` — **我的桌面·紫罗兰**（2560×1440）
- `desktop-wallpaper-codex-skin-miku/` — **我的桌面·夏日Miku**（2560×1440）
- `desktop-wallpaper-codex-skin-sunsetcat/` — **我的桌面·日落猫**（2560×1440）
- `desktop-wallpaper-codex-skin-starry/` — **我的桌面·星空夜**（2560×1440）

每个主题目录都是完整三件套：`background.jpg` + `theme.json` + `theme.css`，并附有可直接托盘导入的 ZIP。

## 内容

- `desktop-wallpaper-codex-skin/` / `desktop-wallpaper-codex-skin.zip` — 紫罗兰主题
- `desktop-wallpaper-codex-skin-miku/` / `desktop-wallpaper-codex-skin-miku.zip` — 夏日Miku主题
- `desktop-wallpaper-codex-skin-sunsetcat/` / `desktop-wallpaper-codex-skin-sunsetcat.zip` — 日落猫主题
- `desktop-wallpaper-codex-skin-starry/` / `desktop-wallpaper-codex-skin-starry.zip` — 星空夜主题
- `sources/` — 四个壁纸的源文件（纯背景、人物层、完整场景图、官方预览图等）
- `install-and-apply.ps1` / `install-and-apply.cmd` — 一键安装引擎并应用主题
- `dream-skin-local-polish.css` — 自定义引擎样式补丁（聊天框分层修复、顶部透明度统一、隐藏首页装饰文字等）
- `WALLPAPER-SETTINGS.md` — 四个壁纸的来源与制作设置说明
- `COMPOSITION.md` — 从源文件重新合成背景的精确步骤

## 使用

1. 完全退出 Codex。
2. 首次使用先安装引擎：

   ```powershell
   powershell.exe -NoProfile -ExecutionPolicy RemoteSigned -File ".\install-and-apply.ps1"
   ```

   或直接双击 `install-and-apply.cmd`。默认应用紫罗兰主题；想用 Miku 主题：

   ```powershell
   powershell.exe -NoProfile -ExecutionPolicy RemoteSigned -File ".\install-and-apply.ps1" -ThemeZip ".\desktop-wallpaper-codex-skin-miku.zip"
   ```

3. 之后每次用桌面上的「Codex Dream Skin」快捷方式打开 Codex。
4. 若要更新/切换主题：托盘 → 导入主题 ZIP → 选择对应 ZIP，再从「已保存主题」切换。

## 引擎样式补丁

把 `dream-skin-local-polish.css` 的内容追加到以下两个文件的末尾（保持 UTF-8），然后重新应用皮肤：

- `%LOCALAPPDATA%\CodexDreamSkin\engine\assets\dream-skin.css`
- `~/.codex/skills/codex-dream-skin/assets/dream-skin.css`

## 安全说明

本仓库只包含主题素材、样式和安装脚本，不包含任何 API Key、`auth.json`、`config.toml`、Wallpaper Engine `config.json`（含设备配对私钥）等凭据文件；上传前已做敏感信息扫描。

## 素材版权提醒

背景源文件来自 Wallpaper Engine 创意工坊作品（紫罗兰 3022080536 / 夏日Miku 3484246124 / 日落猫 3373818743 / 星空夜 3002226732），仅供个人复现使用；如需公开分发请自行确认素材授权。
