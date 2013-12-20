# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
setopt correct
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/sulami/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# PROMPT
autoload -U colors && colors
PROMPT="%{$fg_bold[green]%}%~ > %#%{$fg_no_bold[white]%} "

# VARIABLES
EDITOR=vim
VISUAL=vim
export XDG_CONFIG_HOME="$HOME"
export QT_SELECT=4

# ALIASES
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'
alias v='vim'
alias weechat='weechat-curses'
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias rsync="rsync --progress"
alias zyp="zypper"

# KEYBINDS
typeset -A key
key[Home]=${terminfo[khome]}
key[End]=${terminfo[kend]}
key[Insert]=${terminfo[kich1]}
key[Delete]=${terminfo[kdch1]}
key[Up]=${terminfo[kcuu1]}
key[Down]=${terminfo[kcud1]}
key[Left]=${terminfo[kcub1]}
key[Right]=${terminfo[kcuf1]}
key[PageUp]=${terminfo[kpp]}
key[PageDown]=${terminfo[knp]}
[[ -n "${key[Home]}"    ]]  && bindkey  "${key[Home]}"    beginning-of-line
[[ -n "${key[End]}"     ]]  && bindkey  "${key[End]}"     end-of-line
[[ -n "${key[Insert]}"  ]]  && bindkey  "${key[Insert]}"  overwrite-mode
[[ -n "${key[Delete]}"  ]]  && bindkey  "${key[Delete]}"  delete-char
[[ -n "${key[Up]}"      ]]  && bindkey  "${key[Up]}"      up-line-or-history
[[ -n "${key[Down]}"    ]]  && bindkey  "${key[Down]}"    down-line-or-history
[[ -n "${key[Left]}"    ]]  && bindkey  "${key[Left]}"    backward-char
[[ -n "${key[Right]}"   ]]  && bindkey  "${key[Right]}"   forward-char
bindkey '\E[1;5D' backward-word
bindkey '\E[1;5C' forward-word

# Activate syntax highlighting
source "$HOME/dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$HOME/Downloads/base16-tomorrow-dark.sh"

# X-less colors
if [ "$TERM" = "linux" ]; then
    echo -en "\e]P0151515" #black
    echo -en "\e]P8505050" #darkgrey
    echo -en "\e]P1AC4142" #darkred
    echo -en "\e]P9AC4142" #red
    echo -en "\e]P290A959" #darkgreen
    echo -en "\e]PA90A959" #green
    echo -en "\e]P38F5536" #brown
    echo -en "\e]PB8F5536" #yellow
    echo -en "\e]P46A9FB5" #darkblue
    echo -en "\e]PC6A9FB5" #blue
    echo -en "\e]P5AA759F" #darkmagenta
    echo -en "\e]PDAA759F" #magenta
    echo -en "\e]P675B5AA" #darkcyan
    echo -en "\e]PE75B5AA" #cyan
    echo -en "\e]P7F5F5F5" #lightgrey
    echo -en "\e]PFF5F5F5" #white
    clear #for background artifacting
fi

# Colored manpages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
export LESS=-r
export GROFF_NO_SGR=1
