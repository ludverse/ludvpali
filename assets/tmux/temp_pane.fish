set temp_pane_id (tmux show -wv @temp_pane_id)
set temp_pane_status $status

function new_temp_pane
	set temp_pane_id (tmux split-window -v -c "#{pane_current_path}" -l 50% -P -F "#{pane_id}")
	tmux set -wq @temp_pane_id $temp_pane_id
	tmux set -wq @temp_pane_state 1
end

function ask_kill_temp_pane
	tmux confirm-before "kill-pane -t $temp_pane_id"
end

if test $temp_pane_status -eq 0
	if tmux show -p -t $temp_pane_id # to check if its alive, and if it is, ask to kill it
		ask_kill_temp_pane
	else
		new_temp_pane
	end
else
	new_temp_pane
end
