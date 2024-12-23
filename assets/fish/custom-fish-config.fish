set last_pwd $PWD
set last_status $PWD

function fish_prompt
	if test $last_pwd != $PWD
		set_color brblack; echo -n "  => "
		set_color normal; echo -n (prompt_pwd)
		echo

		set last_pwd $PWD
	end

	set_color -d white
	if test (id -u) -eq 0
		echo 'Γ '
	else
		echo 'λ '
	end
end

function print_error --on-event fish_postexec
	set exit_code $status
	if test $exit_code -ne 0
		set_color brblack; echo -n "  => "
		set_color -o black -b brred; echo -n ERR
		set_color normal
		set_color -o brred; echo -n " "$exit_code
		echo
	end
end

function fish_mode_prompt
	# empty
end

function fish_greeting
	set_color normal; echo -n "  "(prompt_pwd)" "

	if test $TERM != "tmux-256color"
		set_color brred; echo -n $TERM": "
	end

	set_color -d white; echo -n (whoami)@
	set_color -o brmagenta; echo -n (hostname)
	# set_color normal
	# set_color brblack; echo -n at (date '+%Y-%m-%d %H:%M:%S')

	echo
end

