# git shortcuts
alias g="git"
alias gadda="git add -A"
alias gsl='git log --pretty=format:"%h%x09%an%x09%ad%x09%s" --graph'

alias l="ls -la"

#if [ "$(uname)" == "Darwin" ]; then
#  alias gcc=gcc-7
#  alias g++=g++-7
#fi

function start_agent {
  eval $(ssh-agent)
  ssh-add
}

if [ -e ~/.soadot/__local__/common_rc.sh ]
then
  source ~/.soadot/__local__/common_rc.sh 
fi
