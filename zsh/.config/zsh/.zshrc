source_if_exists() {
	if [[ -f $1 ]]; then
		source $1
	fi
}

# Check if zplug is installed
if [[ ! -d ~/.zplug ]]; then
	git clone https://github.com/b4b4r07/zplug ~/.zplug
fi
source ~/.zplug/init.zsh

# Spaceship theme
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

# Oh my zsh lugins
# sudo must start after vi-mode for it to work properly
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/docker-compose", from:oh-my-zsh
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/fzf", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/gitignore", from:oh-my-zsh
zplug "plugins/ripgrep", from:oh-my-zsh
zplug "plugins/rsync", from:oh-my-zsh
zplug "plugins/systemd", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh
zplug "plugins/vi-mode", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/yarn", from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions", from:github, defer:3
zplug "zsh-users/zsh-syntax-highlighting", from:github, defer:3

# Let zplug manage itself
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# Install packages
if ! zplug check --verbose; then
	printf "Install zplug plugins? [y/N]: "
	if read -q; then
		echo
		zplug install
	fi
fi

zplug load

# nvim alias
alias v="nvim"
alias sv="sudo nvim"

# ls alias
alias ls="exa"
alias l="exa -al"

# tmux
alias tmux="tmux -f ~/.config/tmux/tmux.conf"

# git alaises
alias gpoat="git push origin --all && git push origin --tags"
alias gs="git status"
alias gd="git diff"
alias g="git"

# Prevent mv & rm oopsies
alias mv="mv -i"
alias rm="rm -i"

neofetch
