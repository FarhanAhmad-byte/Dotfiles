# Run this script as Administrator (or enable Developer Mode)
$DOTFILES = "D:\GitHub\Dotfiles\Windows\.config"
$PATH = "C:\Users\farha"

function Create-Link($target, $linkPath) {
    # Check if a file or folder already exists at the destination
    if (Test-Path $linkPath) {
        Write-Host "Removing existing file/folder at $linkPath" -ForegroundColor Yellow
        Remove-Item $linkPath -Recurse -Force
    }
    
    # Create the Symlink
    New-Item -ItemType SymbolicLink -Path $linkPath -Target $target -Force | Out-Null
    Write-Host "Linked $linkPath ---> $target" -ForegroundColor Green
}

# --- DEFINE YOUR LINKS HERE ---

# FastFetch
Create-Link "$DOTFILES\fastfetch\config.jsonc" "$PATH\.config\fastfetch\config.jsonc"

# WezTerm
Create-Link "$DOTFILES\wezterm\wezterm.lua" "$PATH\.config\wezterm\wezterm.lua"

# YASB (Yet Another Status Bar)
Create-Link "$DOTFILES\yasb\config.yaml" "$PATH\.config\yasb\config.yaml"
Create-Link "$DOTFILES\yasb\styles.css" "$PATH\.config\yasb\styles.css"

# Neovim / .config style apps
# $CONFIG_DIR = "$HOME\.config"
# if (!(Test-Path $CONFIG_DIR)) { New-Item -ItemType Directory -Path $CONFIG_DIR }
# Create-Link "$DOTFILES\nvim" "$CONFIG_DIR\nvim"

# Komorebi
Create-Link "$DOTFILES\Komorebi\whkdrc" "$PATH\.config\whkdrc"
Create-Link "$DOTFILES\Komorebi\komorebi.json" "$PATH\komorebi.json"


Write-Host "All links updated!" -ForegroundColor Cyan
