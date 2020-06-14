function fish_greeting
    neofetch
end

function path_if_exists
    if [ -d "$argv" ]
        set PATH $PATH "$argv"
    end
end

# Add paths
path_if_exists ~/.config/yarn/global/node_modules/.bin
path_if_exists ~/.local/bin
path_if_exists ~/.emacs.d/bin
path_if_exists ~/.local/share/go/bin
path_if_exists ~/.local/share/cargo/bin

# Set GPG TTY
set GPG_TTY (tty)

# editor
set -xg EDITOR "nvim"

# bobthefish
set -xg theme_nerd_fonts yes
set -xg theme_color_scheme gruvbox

# sudope
set -xg sudope_sequence \e\e

# Set tmux tmpdir to proper directory
set -xg TMUX_TMPDIR "$XDG_RUNTIME_DIR"

# Rust
set -xg CARGO_HOME ~/.local/share/cargo
set -xg RUSTUP_HOME ~/.local/share/rustup

# Golang
set -xg GOPATH ~/.local/share/go

# nvim alias
alias v="nvim"
alias sv="sudo nvim"

# ls alias
alias ls="exa"
alias l="exa -al"

# git alaises
alias gpoat="git push origin --all && git push origin --tags"
alias gs="git status"
alias gd="git diff"
alias g="git"

# Prevent mv & rm oopsies
alias mv="mv -i"
alias rm="rm -i"

# Load lfcd wiith proper icons
function lf
    set -lx LF_ICONS "\
di=:\
fi=:\
ln=:\
or=:\
ex=:\
*.c=:\
*.cc=:\
*.clj=:\
*.coffee=:\
*.cpp=:\
*.css=:\
*.d=:\
*.dart=:\
*.erl=:\
*.exs=:\
*.fs=:\
*.go=:\
*.h=:\
*.hh=:\
*.hpp=:\
*.hs=:\
*.html=:\
*.java=:\
*.jl=:\
*.js=:\
*.json=:\
*.lua=:\
*.md=:\
*.php=:\
*.pl=:\
*.pro=:\
*.py=:\
*.rb=:\
*.rs=:\
*.scala=:\
*.ts=:\
*.vim=:\
*.cmd=:\
*.ps1=:\
*.sh=:\
*.bash=:\
*.zsh=:\
*.fish=:\
*.tar=:\
*.tgz=:\
*.arc=:\
*.arj=:\
*.taz=:\
*.lha=:\
*.lz4=:\
*.lzh=:\
*.lzma=:\
*.tlz=:\
*.txz=:\
*.tzo=:\
*.t7z=:\
*.zip=:\
*.z=:\
*.dz=:\
*.gz=:\
*.lrz=:\
*.lz=:\
*.lzo=:\
*.xz=:\
*.zst=:\
*.tzst=:\
*.bz2=:\
*.bz=:\
*.tbz=:\
*.tbz2=:\
*.tz=:\
*.deb=:\
*.rpm=:\
*.jar=:\
*.war=:\
*.ear=:\
*.sar=:\
*.rar=:\
*.alz=:\
*.ace=:\
*.zoo=:\
*.cpio=:\
*.7z=:\
*.rz=:\
*.cab=:\
*.wim=:\
*.swm=:\
*.dwm=:\
*.esd=:\
*.jpg=:\
*.jpeg=:\
*.mjpg=:\
*.mjpeg=:\
*.gif=:\
*.bmp=:\
*.pbm=:\
*.pgm=:\
*.ppm=:\
*.tga=:\
*.xbm=:\
*.xpm=:\
*.tif=:\
*.tiff=:\
*.png=:\
*.svg=:\
*.svgz=:\
*.mng=:\
*.pcx=:\
*.mov=:\
*.mpg=:\
*.mpeg=:\
*.m2v=:\
*.mkv=:\
*.webm=:\
*.ogm=:\
*.mp4=:\
*.m4v=:\
*.mp4v=:\
*.vob=:\
*.qt=:\
*.nuv=:\
*.wmv=:\
*.asf=:\
*.rm=:\
*.rmvb=:\
*.flc=:\
*.avi=:\
*.fli=:\
*.flv=:\
*.gl=:\
*.dl=:\
*.xcf=:\
*.xwd=:\
*.yuv=:\
*.cgm=:\
*.emf=:\
*.ogv=:\
*.ogx=:\
*.aac=:\
*.au=:\
*.flac=:\
*.m4a=:\
*.mid=:\
*.midi=:\
*.mka=:\
*.mp3=:\
*.mpc=:\
*.ogg=:\
*.ra=:\
*.wav=:\
*.oga=:\
*.opus=:\
*.spx=:\
*.xspf=:\
*.pdf=:\
*.nix=:\
"

    /usr/bin/lf
end


# Set fzf keybindings here for now as they don't work with stable version of omf https://github.com/jethrokuan/fzf/issues/109
bind \co '__fzf_find_file'
bind \cr '__fzf_reverse_isearch'
bind \ec '__fzf_cd'
bind \eC '__fzf_cd --hidden'
bind \eO '__fzf_open'
bind \eo '__fzf_open --editor'

if bind -M insert >/dev/null 2>/dev/null
    bind -M insert \co '__fzf_find_file'
    bind -M insert \cr '__fzf_reverse_isearch'
    bind -M insert \ec '__fzf_cd'
    bind -M insert \eC '__fzf_cd --hidden'
    bind -M insert \eO '__fzf_open'
    bind -M insert \eo '__fzf_open --editor'
end

if set -q FZF_COMPLETE
    bind \t '__fzf_complete'
    if bind -M insert >/dev/null 2>/dev/null
        bind -M insert \t '__fzf_complete'
    end
end
