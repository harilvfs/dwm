# -------------------------------- #
# ------->  ZSH Config's  <------- #
# -------------------------------- #

# zsh_theme
ZSH_THEME="robbyrussell"
plugins=(git)

# zsh_history
HISTFILE=$HOME/.zsh_history
HISTSIZE=1000
SAVEHIST=$HISTSIZE
HISTDUP=erase

# history opts
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups


if [ -f $ZSH/oh-my-zsh.sh ]; then
  source $ZSH/oh-my-zsh.sh
fi

# --------------------------------- #
# ---------->  Scripts <----------- #
# --------------------------------- #

# ex = EXtractor for all kinds of archives
ex () {
  if [ -f "$1" ]; then
    case $1 in
      *.tar.bz2)   tar xjf "$1"   ;;
      *.tar.gz)    tar xzf "$1"   ;;
      *.bz2)       bunzip2 "$1"   ;;
      *.rar)       unrar x "$1"   ;;
      *.gz)        gunzip "$1"    ;;
      *.tar)       tar xf "$1"    ;;
      *.tbz2)      tar xjf "$1"   ;;
      *.tgz)       tar xzf "$1"   ;;
      *.zip)       unzip "$1"     ;;
      *.Z)         uncompress "$1";;
      *.7z)        7z x "$1"      ;;
      *.deb)       ar x "$1"      ;;
      *.tar.xz)    tar xf "$1"    ;;
      *.tar.zst)   tar xf "$1"    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# reporting tools( fetch scripts ) - install comment when not installed
pfetch 

# -------------------------------- #
# --------->  aliases  <---------- #
# -------------------------------- #

# YouTube-dl aliases for audio and video downloads
alias yta-aac="yt-dlp --extract-audio --audio-format aac"
alias yta-best="yt-dlp --extract-audio --audio-format best"
alias yta-flac="yt-dlp --extract-audio --audio-format flac"
alias yta-mp3="yt-dlp --extract-audio --audio-format mp3"
alias ytv-best="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4"

# change colorscheme of terminal
alias chcolor="bash ~/.termux/scripts/chcolor.sh"

# -------------------------------- #
# --------->  Sources  <---------- #
# -------------------------------- #
source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias vim='nvim'
alias l='eza -lh --icons=auto' # long list
alias ls='eza -1 --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree
alias ll='eza -lha --icons=auto --sort=name --group-directories-first'

eval "$(zoxide init zsh)"
  
#Titus
lazyg() {
	git add .
	git commit -m "$1"
	git push
}

