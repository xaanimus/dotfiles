set cur_dir (dirname (status -f))
source $cur_dir/bass/functions/bass.fish

function start_agent
  eval (ssh-agent -c)
end

bass source $cur_dir/common_rc.sh
