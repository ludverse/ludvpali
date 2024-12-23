import util


def alacritty_setup():
    util.copy("alacritty", "~/.config/alacritty")
    util.clone_repo("https://github.com/alacritty/alacritty-theme.git", "~/.config/alacritty/themes")
