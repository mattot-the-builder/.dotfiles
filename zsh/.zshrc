# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=10000
setopt autocd beep extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/mattot/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# starship
eval "$(starship init zsh)"

# alias
alias gg="lazygit"

# Set default editor
export EDITOR="nvim"
export VISUAL="nvim"
