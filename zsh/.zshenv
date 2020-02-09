path_if_exists() {
	if [[ -d $1 ]]; then
		export PATH="$1:$PATH"
	fi
}

# Stop tmux bitching about 256 colours
TERM="xterm-256color"

# PATH
path_if_exists ~/.config/yarn/global/node_modules/.bin
path_if_exists ~/.local/bin
path_if_exists ~/.emacs.d/bin

# Set GPG TTY
export GPG_TTY="$(tty)"

# editor
export EDITOR="nvim"

# Save history file in proper place
HISTFILE=~/.cache/zsh/history
