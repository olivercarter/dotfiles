export ZSH="$HOME/.oh-my-zsh"
###ZSH_THEME="apple"
###ZSH_THEME="af-magic"
##ZSH_THEME="aussiegeek"
##ZSH_THEME="darkblood"
###ZSH_THEME="duellj"
###ZSH_THEME="frontcube"
###ZSH_THEME="gallois"
###ZSH_THEME="jonathan"
###ZSH_THEME="mh"
###ZSH_THEME="nanotech"
##ZSH_THEME="nicoulaj"
ZSH_THEME=random
ZSH_THEME_RANDOM_CANDIDATES=("af-magic" "gallois" "nanotech")
CASE_SENSITIVE="true"
plugins=(macos)
source $ZSH/oh-my-zsh.sh

export PYTHONDONTWRITEBYTECODE=1
export EDITOR="nvim"
export PATH="bash_scripts:$PATH"
export GOPATH="$HOME/go"
export MANPAGER='nvim +Man!'

alias vi="nvim"
alias myip="curl http://ipecho.net/plain; echo"
alias mkcd="foo(){ mkdir -p "$1"; cd "$1" }; foo"
alias viedit="$EDITOR $HOME/.config/nvim/lua/ogc/remap.lua"
alias zshrc=" $EDITOR $HOME/.zshrc"
alias t=" $EDITOR $HOME/.tmux.conf"
alias ta="tmux attach"
alias fire="open -a Firefox\ Developer\ Edition"
alias sub="subl"
alias cheat="curl cht.sh"
alias la="ls -a"
alias ql="quick-look"
alias s="open -j -a /Applications/Spotify.app; spt"
alias spl="spotify play list"
alias st="spotify status"
alias vimrc='~/.vimrc'
alias g='duckit'
alias pydocs='w3m https://docs.python.org/3/'
alias j='clear'
alias igpu='sudo pmset -a gpuswitch 0'
alias dgpu='sudo pmset -a gpuswitch 1'
alias autogpu='sudo pmset -a gpuswitch 2'
alias py='python3'
alias m3u8mp4="echo "Enter m3u8 link:";read link;echo "Enter output filename:";read filename;ffmpeg -i "$link" -bsf:a aac_adtstoasc -vcodec copy -c copy -crf 50 $filename.mp4"
alias rcconf="cd ~/.config/ranger/ && vi rc.conf"

set -o ignoreeof

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

rangercd () {
    tmp="$(mktemp)"
    ranger --choosedir="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s ' df' 'rangercd\n'

duckit(){
    w3m "https://lite.duckduckgo.com/lite/?q=$*"
}

eval $(thefuck --alias)

