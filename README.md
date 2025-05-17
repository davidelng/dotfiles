# Dotfiles

My personal settings for common Linux tools.

I manage my dotfiles with [Stow](https://www.gnu.org/software/stow/) so I can keep everything tidy and spin up new Linux machines really fast.

Reminder: just use Brew if on MacOS

## What's included

- ZSH and Bash with some aliases
- Tmux
- Neovim
- Some general-purpose scripts

## Color scheme

I use [Flexoki](https://stephango.com/flexoki)

## New setup reminder

- clone and run `./install` inside this repo to install the configs. 
- git config --global user.name/user.email/init.defaultBranch
- install stow and clone this repo
- chsh to set ZSH as default
- clone [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) and [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) inside ~/.zsh
- Download a [Nerdfont](https://www.nerdfonts.com/font-downloads) (most likely JetBrains Mono)
- Check ssh keys and config

### Software to install

- git (duh)
- curl
- stow
- zsh
- [eza](https://github.com/eza-community/eza)
- [fzf](https://github.com/junegunn/fzf)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- [neovim](https://github.com/neovim/neovim)
- [tmux](https://github.com/tmux/tmux/wiki)
- python
- [go](https://go.dev/) (use script)
- [nvm](https://github.com/nvm-sh/nvm)
- [jq](https://jqlang.github.io/jq/)
- [bat](https://github.com/sharkdp/bat)
- [git-delta](https://github.com/dandavison/delta)
- [fzf-git](https://github.com/junegunn/fzf-git.sh)
- htop/btop
- lzg/lzd
- make
- gcc
- [fastfetch](https://github.com/fastfetch-cli/fastfetch)
- [gh](https://github.com/cli/cli#installation)
- docker and docker stuff
- kubernetes stuff
- [aws](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) and sam/sls

