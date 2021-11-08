#!/bin/zsh

source ~/.soadot/rc.sh

echo "[zshrc, compinit] loading compinit..."
autoload -U compinit
echo "[init, compinit] done."

autoload -Uz history-beginning-search-menu
zle  -N history-beginning-search-menu
bindkey '^P'  history-beginning-search-backward
bindkey '^N'  history-beginning-search-forward

export CLICOLOR=1
export LSCOLORS="Exfxcxdxbxegedabagacad"

autoload -U colors && colors

export PS1="%{$fg[white]%}[ %{$fg_bold[yellow]%}%45<..<%~%<< %{$reset_color%}] %# "

#zsh-syntax-highlighting could break if not sourced at the end of zshrc
source ~/.soadot/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
