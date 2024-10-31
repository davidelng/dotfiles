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

# Ignorecase completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Git branches
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
precmd () { vcs_info }
zstyle ':vcs_info:git*' formats ' %s(%F{magenta}%b%f)'

# Fancy prompt
autoload -U colors && colors
setopt prompt_subst
PS1='%F{yellow}%n@%m%f %F{cyan}%~%f${vcs_info_msg_0_} -> '

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

# FZF
if command -v fzf >/dev/null 2>&1; then
    eval "$(fzf --zsh)"
fi

# Golang
if [ -d "/usr/local/go/bin" ]; then
    path+=/usr/local/go/bin
fi