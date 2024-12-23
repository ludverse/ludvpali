set temp_pane_id (tmux show -wv @temp_pane_id)
set temp_pane_status $status

if test $temp_pane_status -eq 0
	set temp_pane_state (tmux show -wv @temp_pane_state)
	if test $temp_pane_state -eq 0
		tmux resize-pane -t $temp_pane_id -y 50%
		tmux select-pane -t $temp_pane_id
		tmux set -wq @temp_pane_state 1
	else
		tmux resize-pane -t $temp_pane_id -y 8
		tmux select-pane -t "{last}"
		tmux set -wq @temp_pane_state 0
	end
end
