# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob nomatch notify
unsetopt autocd beep
bindkey -e
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Aliases
source $HOME/.alias

# EDITOR
export EDITOR=/usr/bin/nvim

# Ignorecase completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Git branches
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
precmd () { vcs_info }
# zstyle ':vcs_info:git*' formats ' %s(%F{magenta}%b%f)'
# zstyle ':vcs_info:git*' formats ' on %F{magenta}%b%f'
zstyle ':vcs_info:git*' formats ' %F{white}%b%f'

# Fancy prompt
autoload -U colors && colors
setopt prompt_subst
# PS1='%F{yellow}%n@%m%f %F{cyan}%~%f${vcs_info_msg_0_} -> '
# PROMPT='%F{cyan}%~%f${vcs_info_msg_0_} %F{yellow}%f '
# PROMPT='%F{yellow}%~%f${vcs_info_msg_0_} %F{yellow}➤%f '
# PS2='%F{yellow}➤➤%f '
# PROMPT='%F{yellow}%~%f${vcs_info_msg_0_} %F{yellow}%f '
# PS2='%F{yellow}%f '
PROMPT='%F{yellow}%~%f${vcs_info_msg_0_} %F{yellow}󰅂%f '
PS2='%F{yellow}󰅂󰅂%f '

# Autosuggestions
if [ -f $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# Syntax highlighting
if [ -f $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# Path
if [ -d "$HOME/bin" ]; then
    path+=$HOME/bin
fi

if [ -d "$HOME/.local/bin" ]; then
    path+=$HOME/.local/bin
fi

# Golang
if [ -d "$HOME/go/bin" ]; then
    path+=$HOME/go/bin
fi

if [ -d "/usr/local/go" ]; then
    path+=/usr/local/go
fi

if [ -d "/usr/local/go/bin" ]; then
    path+=/usr/local/go/bin
fi

# FZF
if command -v fzf >/dev/null 2>&1; then
    eval "$(fzf --zsh)"
fi

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# GitHub
# eval "$(ssh-agent -s)" > /dev/null 2>&1
# ssh-add $HOME/.ssh/githubkey > /dev/null 2>&1

# Homebrew
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
# export PATH="/opt/homebrew/opt/bc/bin:$PATH"
# export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
# export PATH="/opt/homebrew/opt/gawk/libexec/gnubin:$PATH"
# export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"

# Zoxide
eval "$(zoxide init --cmd cd zsh)"

# Oh My Posh
# eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/zen.omp.toml)"

# AWS
# export AWS_PROFILE=

# TERM
# export TERM=xterm-256color

# Config dir
export XDG_CONFIG_HOME="$HOME/.config"

