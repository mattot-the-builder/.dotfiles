
autoload -Uz compinit
compinit

HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# User configuration

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# Alias List

alias mattot-cloud='ssh mattot@109.106.244.231'

alias dev='cd ~/dev'
alias pa='php artisan'
alias blazingbyte='cd ~/dev/blazingbyte/'
alias blazingship='cd ~/dev/blazingship/'
alias blazingship-api='cd ~/dev/blazingship-api/'
alias sppim-serve="open -n -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args --user-data-dir="/tmp/chrome_dev_test" --disable-web-security"
alias nrd='npm run dev'
alias go-dev='cd ~/go/src/github.com/mattot-the-builder/'
alias erawhiz='cd ~/erawhiz'
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
alias sppim='cd ~/erawhiz/sppim'
alias sppim-v3='cd ~/erawhiz/sppim/sppim-v3'

export npm_config_cache="~/local_npm_cache"

alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# background tunnel for gosg non citizen mongodb
alias gosg-mongo-tunnel="ssh -f -N -L 27018:localhost:27017 gosg@srv563423.hstgr.cloud"

# remap ls
alias ls="eza"
alias ll="eza -alh"
alias tree="eza --tree"

# remap lazygit
alias lg="lazygit"
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Load Angular CLI autocompletion.
source <(ng completion script)

# ZSH prompt
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet


# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/mattot/Library/Application Support/Herd/config/php/83/"


# Herd injected PHP binary.
export PATH="/Users/mattot/Library/Application Support/Herd/bin/":$PATH

# Composer path
export PATH="$PATH:$HOME/.composer/vendor/bin"

# vim binding
bindkey -v

# Open directory function
ofd() {
    if [ -z "$1" ]; then
        open .
    else
        open "$1"
    fi
}


# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/mattot/Library/Application Support/Herd/config/php/84/"

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# go path
export GOPATH=$HOME/go

export KC_BOOTSTRAP_ADMIN_USERNAME=mattot
export KC_BOOTSTRAP_ADMIN_PASSWORD=password

export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"

export PATH="/opt/homebrew/opt/node@22/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/node@22/lib"
export CPPFLAGS="-I/opt/homebrew/opt/node@22/include"
