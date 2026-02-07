# macOS Dotfiles

Backup date: 2026-02-07

## Structure

```
shell/       - zsh/bash config, p10k theme
git/         - gitconfig, global ignore
editor/      - neovim, vim config
ruby/        - gemrc, irbrc
fonts/       - Monaco Nerd Font
terminal/    - iTerm2 settings, color scheme
tools/       - Brewfile
```

## Runtime Versions

- **Node.js** (nvm): default = `lts/iron` (v20.19.5)
- **SDKMAN**: installed (check `sdk list` for versions)
- **Oh My Zsh**: plugins = (git), theme = powerlevel10k

## Manual Installation

- Homebrew: https://brew.sh
- oh-my-zsh: https://ohmyz.sh/
- vim-plug: https://github.com/junegunn/vim-plug?tab=readme-ov-file#neovim
- nvm: https://github.com/nvm-sh/nvm?tab=readme-ov-file#install--update-script
- SDKMAN: `curl -s "https://get.sdkman.io" | bash`

## Restore Steps

1. Install Homebrew, then `brew bundle --file=tools/Brewfile`
2. Install Oh My Zsh
3. Install nvm, then `nvm install lts/iron && nvm alias default lts/iron`
4. Install SDKMAN
5. Copy shell files to `~/`
6. Copy git files: `.gitconfig` to `~/`, `.config-git-ignore` to `~/.config/git/ignore`
7. Copy `editor/.config/nvim/init.vim` to `~/.config/nvim/init.vim`
8. Import iTerm2 settings from `terminal/iterm2-settings.plist`
9. Install fonts from `fonts/`
10. Restore `~/.ssh/config` and GPG keys from separate credentials backup

## Apps Not in Brewfile

| App | 備註 |
|-----|------|
| 1Password | 密碼管理 |
| Antigravity | AI agent IDE |
| Claude | Anthropic |
| Google Chrome | 瀏覽器 |
| LINE | 通訊 |
| Microsoft Edge | 瀏覽器 |
| Nally | BBS 客戶端 |
| OpenVPN Connect | VPN |
| Postman | API 測試 |
| Slack | 通訊 |
| Spotify | 音樂 |
| The Unarchiver | 解壓縮 |
| Tunnelblick | VPN |
| VLC | 播放器 |
| iTerm | 終端機 |
