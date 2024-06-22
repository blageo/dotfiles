# My dotfiles

<!--toc:start-->
- [My dotfiles](#my-dotfiles)
  - [Requirements](#requirements)
  - [Installation](#installation)
  - [Known Issues](#known-issues)
    - [markdownlint needs manually installed with Mason](#markdownlint-needs-manually-installed-with-mason)
<!--toc:end-->

Personal repo of my linux dotfiles for cloning on new machines.

## Requirements

## Installation

### Initial Install

First, check out the dotfiles repo in your $HOME directory using git

```bash
git clone https://github.com/blageo/dotfiles.git
```

Run the startup script included in the dotfiles directory.

```bash
cd ~/dotfiles
./startup.sh
```

This script installs most of what you'll need installed on your system.

### Secondary Installs and Stowing

Install NVM and use it, required for pyright

```zsh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | zsh
```

Add this to .zshrc to load nvm into session

```zsh
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
```

```zsh
source ~/.zshrc
```

Install latest version of Node.js

```zsh
nvm install --lts
nvm use --lts
```

then use GNU stow to create symlinks

```bash
stow .
```

## Known Issues

Including but NOT LIMITED TO the following:

### markdownlint needs manually installed with Mason

Disclaimer: Markdown linting is comical to me but I find linters interesting.

Use manual command below to install it manually until I figure it out.

```neovim command
:MasonInstall markdownlint
```
