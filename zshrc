# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#
# Custom theme: https://github.com/ream88/ream88.zsh-theme
ZSH_THEME="ream88"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
    brew
    docker
    docker-compose
    gem
    git
    heroku
    mix
    npm
    osx
)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh
source $HOME/.zsh/aliases.sh

# Don't correct arguments
unsetopt correct_all
setopt correct
#setopt extended_glob

# Autocomplete path, so `cd rails` jumpts to `~/Code/Other/rails`
cdpath=(. ~ ~/Code/ ~/Code/* ~/Code/yodel/yodel/)

# Bundle editor, a.k.a editor which will be opened after `bundle open rails`.
export EDITOR=code

# Paths
export PATH="/usr/local/opt/binutils/bin:$PATH:/Users/mario/.bin:$HOME/.fastlane/bin"
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Wildcard search
bindkey '^R' history-incremental-pattern-search-backward
bindkey '^S' history-incremental-pattern-search-forward

# Use gpg-agent for git rebase and so on. Be sure to have use-agent config set properly.
export GPG_TTY=$(tty)

export ERL_AFLAGS="-kernel shell_history enabled"

# asdf
source /usr/local/opt/asdf/asdf.sh
source /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash
