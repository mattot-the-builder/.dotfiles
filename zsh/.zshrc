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

export PATH="/home/mattot/.local/bin:$PATH"

# starship
eval "$(starship init zsh)"

# Set default editor
export EDITOR="nvim"
export VISUAL="nvim"

# antidote ( zsh package manager )
# source antidote
source /home/mattot/.config/antidote/antidote.zsh
# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load

# alias
alias gg="lazygit"

# pnpm
export PNPM_HOME="/home/mattot/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
