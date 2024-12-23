import util


def nvim_setup():
    util.clone_repo("https://github.com/ludverse/nvim-config",
                    "~/.config/nvim")
