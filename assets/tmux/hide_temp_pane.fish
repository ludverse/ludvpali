set temp_pane_id (tmux show -wv @temp_pane_id)
set temp_pane_status $status

if test $status -eq 0
	tmux resize-pane -t $temp_pane_id -y 8
end
