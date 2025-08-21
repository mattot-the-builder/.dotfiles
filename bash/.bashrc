eval "$(starship init bash)"

alias gg="lazygit"

# Set default editor
export EDITOR="nvim"
export VISUAL="nvim"

# pnpm
export PNPM_HOME="/home/mattot/.local/share/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Load Angular CLI autocompletion.
source <(ng completion script)
