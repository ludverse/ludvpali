import util


def desktop_opts_setup():
    util.copy("user-dirs.dirs", "~/.config/user-dirs.dirs")
    util.copy("mimeapps.list", "~/.config/mimeapps.list")
    util.copy("sway-portals.conf",
              "/usr/share/xdg-desktop-portal/sway-portals.conf")
