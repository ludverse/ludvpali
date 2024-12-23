bind -M insert \cy accept-autosuggestion

function fish_prompt
	set_color brblack
	if fish_is_root_user
		echo 'Γ '
	else
		echo 'λ '
	end
end

function fish_postexec
	set exit_code $status
	if test $exit_code -ne 0
		echo 'Program exited erroneously with code' $exit_code
	end
end


function fish_mode_prompt
	# empty
end

function fish_greeting
	set_color -o blue;

	echo
	echo 'i just shat myself'
	set_color white
	echo 'fuck'
	echo
end
