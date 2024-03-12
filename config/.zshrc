# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
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

# Shared alias file
source $HOME/.aliases

# Ignorecase completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Git support
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
precmd () { vcs_info }
zstyle ':vcs_info:git*' formats ' %s(%F{magenta}%b%f)'

# Color prompt
autoload -U colors && colors
setopt prompt_subst
PS1='%F{yellow}%n@%m%f %F{cyan}%~%f${vcs_info_msg_0_} -> '

# Autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

path+=$HOME/.local/bin
path+=$HOME/nvim-linux64/bin

export SAM_CLI_TELEMETRY=0
