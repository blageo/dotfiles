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
