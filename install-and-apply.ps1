param(
  [string]$ThemeZip = (Join-Path $PSScriptRoot 'desktop-wallpaper-codex-skin.zip')
)

$ErrorActionPreference = 'Stop'

$StateRoot = Join-Path $env:LOCALAPPDATA 'CodexDreamSkin'
$SkillRoot = 'C:\Users\zzx\.codex\skills\codex-dream-skin'
$Installer = Join-Path $SkillRoot 'scripts\install-dream-skin.ps1'
$Common = Join-Path $SkillRoot 'scripts\common-windows.ps1'
$ThemeWin = Join-Path $SkillRoot 'scripts\theme-windows.ps1'
$EngineStart = Join-Path $StateRoot 'engine\scripts\start-dream-skin.ps1'

Write-Host 'Step 1/4: Check that Codex is closed...'
$running = @(Get-CimInstance Win32_Process -ErrorAction SilentlyContinue |
  Where-Object { $_.Name -in @('ChatGPT.exe', 'codex.exe') })
if ($running.Count -gt 0) {
  Write-Host 'Codex is still running. Please close Codex completely, then run this script again.' -ForegroundColor Yellow
  exit 1
}

if (-not (Test-Path -LiteralPath $EngineStart -PathType Leaf)) {
  Write-Host 'Step 2/4: Installing Codex Dream Skin engine (one-time)...'
  & $Installer
  if ($LASTEXITCODE -ne 0) { throw 'Engine installer failed.' }
} else {
  Write-Host 'Engine already installed.'
}

Write-Host 'Step 3/4: Importing theme and setting it as the active background...'
. $Common
. $ThemeWin
$saved = Import-DreamSkinThemeZip -ArchivePath $ThemeZip -StateRoot $StateRoot
$null = Use-DreamSkinSavedTheme -ThemeDirectory $saved.Path -StateRoot $StateRoot
Write-Host ("Theme ready: " + $saved.Name)

Write-Host 'Step 4/4: Launching Codex with Dream Skin...'
& $EngineStart
if ($LASTEXITCODE -ne 0) {
  Write-Host 'Codex did not launch automatically. Start it from the "Codex Dream Skin" shortcut.' -ForegroundColor Yellow
}
