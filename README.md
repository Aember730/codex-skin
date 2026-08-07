# Codex Dream Skin — 我的桌面·紫罗兰

基于 [Codex Dream Skin](https://github.com/Fei-Away/Codex-Dream-Skin) 的自定义皮肤版本，背景由 Wallpaper Engine 创意工坊壁纸「赛博color-宣纸国画-紫罗兰永恒花园」（Workshop 3022080536）的人物层与纯背景层合成，尺寸 2560×1440。

## 内容

- `desktop-wallpaper-codex-skin/` — 主题三件套（`background.jpg` + `theme.json` + `theme.css`）
- `desktop-wallpaper-codex-skin.zip` — 可直接通过 Dream Skin 托盘导入的压缩包
- `install-and-apply.ps1` / `install-and-apply.cmd` — 一键安装引擎并应用主题
- `dream-skin-local-polish.css` — 自定义引擎样式补丁（修复聊天框分层/白边、新对话聊天框分层、顶部透明度统一）

## 使用

1. 完全退出 Codex。
2. 首次使用先安装引擎（也可先运行官方 `install-dream-skin.ps1`）：

   ```powershell
   powershell.exe -NoProfile -ExecutionPolicy RemoteSigned -File ".\install-and-apply.ps1"
   ```

   或直接双击 `install-and-apply.cmd`。
3. 之后每次用桌面上的「Codex Dream Skin」快捷方式打开 Codex。
4. 若要更新主题，托盘 → 导入主题 ZIP → 选择 `desktop-wallpaper-codex-skin.zip`，再从「已保存主题」切换。

## 引擎样式补丁

把 `dream-skin-local-polish.css` 的内容追加到以下两个文件的末尾（保持 UTF-8），然后重新应用皮肤：

- `%LOCALAPPDATA%\CodexDreamSkin\engine\assets\dream-skin.css`
- `~/.codex/skills/codex-dream-skin/assets/dream-skin.css`

## 安全说明

本仓库只包含主题素材、样式和安装脚本，不包含任何 API Key、`auth.json`、`config.toml` 等凭据文件；上传前已做敏感信息扫描。

## 素材版权提醒

背景图来自 Wallpaper Engine 创意工坊作品（编号 3022080536），仅供个人复现使用；如需公开分发请自行确认素材授权。
