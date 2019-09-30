# Stop tmux bitching about 256 colours
TERM="xterm-256color"

# Path to your oh-my-zsh installation.
ZSH="/home/alrayyes/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(aws common-aliases composer docker extract git git-flow gitignore httpie rsync symfony2 systemd tmux vi-mode fzf sudo yarn zsh-syntax-highlighting )

source $ZSH/oh-my-zsh.sh

# nvim alias
alias vim="nvim"
alias vi="nvim"

# ls alias
alias ls="lsd"
alias l="lsd -al"

# vifm alias
alias vifm="vifmrun"

# Add yarn path
export PATH="$PATH:/home/alrayyes/.config/yarn/global/node_modules/.bin:/home/alrayyes/.scripts"

# Set GPG TTY
export GPG_TTY="$(tty)"

# Set default browser
export BROWSER="firefox"

# Set default terminal
export TERMINAL="st"

# pkg editor
export VISUAL="vim"

# Enable password store extensions
export PASSWORD_STORE_ENABLE_EXTENSIONS="true"

# Set gopath
export GOPATH=$HOME/go

# Refresh gpg-agent tty in case user switches into an X session
gpg-connect-agent updatestartuptty /bye >/dev/null

neofetch
