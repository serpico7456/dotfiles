# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
DEFAULT_USER="rhorrisb"
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="agnoster-rth"
ZSH_THEME="rhorrisb"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


alias vim='mvim -v'
alias ll='ls -lAh'
alias ls='ls -bF'
alias cd..='cd ..'
alias cd...='cd ../..'
# public IP
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"
# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"
# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
# Show/hide hidden files in Finder
alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git bundler brew gem)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/Users/rhorrisb/.rbenv/shims:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

export EDITOR='/usr/bin/vim'
#vim keybindings
bindkey -v
#map jj in insert mode to enter command mode
bindkey -M viins 'jj' vi-cmd-mode
#allow ctrl-r to inremental search
bindkey ‘^R’ history-incremental-search-backward
#bind 'v' to edit line in vim
bindkey -M vicmd v edit-command-line

# for Homebrew installed rbenv
 if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
