import util


def tmux_setup():
    util.copy(".tmux.conf", "~/.tmux.conf")
    util.copy("tmux", "~/.config/tmux")
    util.copy("tmux", "~/.config/tmux")
    util.clone_repo("https://github.com/27medkamal/tmux-session-wizard.git",
                    "~/.config/tmux/tmux-session-wizard")
