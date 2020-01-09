alias vin=nvim

# git shortcuts
alias g="git"
alias gadda="git add -A"
alias gsl='git log --pretty=format:"%h%x09%an%x09%ad%x09%s" --graph'

alias l="ls -la"

if [ -e $(dirname "$0")/__local__/common_rc.sh ]
then
  source $(dirname "$0")/__local__/common_rc.sh 
fi
