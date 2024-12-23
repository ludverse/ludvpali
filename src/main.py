from desktop_opts import desktop_opts_setup
from sway_n_bar import sway_n_bar_setup
from nvim import nvim_setup
from tmux import tmux_setup
from alacritty import alacritty_setup
from fish import fish_setup
import pathlib
import os
import subprocess


def main():
    if os.geteuid() != 0:
        script_path = pathlib.Path(__file__).resolve()
        exit_code = os.system(
            "sudo -E env PATH=${{PATH}} python3 {}".format(script_path))
        exit(exit_code)

    # passwd_f = open("/etc/passwd")
    # with passwd_f:
    #     passwd_required_lines
    #     passwd = str(passwd_f.read())
    # crontab_setup()
    with open(os.devnull, 'wb') as devnull:
        return_code = subprocess.call(
            ["which", "sway"], stdout=devnull, stderr=devnull)

        print(return_code)
        if return_code == 0:
            desktop_opts_setup()
            sway_n_bar_setup()
            alacritty_setup()

        nvim_setup()
        tmux_setup()
        fish_setup()


if __name__ == "__main__":
    main()
