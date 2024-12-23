alias ..='z ..'
alias start='. ~/.config/paliforge/start-sway.fish'
alias reboot='systemctl reboot'
alias e='$EDITOR'
alias la='ls -la'
alias l='ls -a'
alias fish_refresh='source ~/.config/fish/config.fish'
alias poweroff='systemctl poweroff'

set -gx GOPATH '/home/ludv/coding/gopath'
set -gx LANG 'en_GB.UTF-8'
set -gx BROWSER 'librewolf'
set -gx EDITOR 'nvim'
set -gx GTK_THEME 'adw-gtk3-dark'
set -gx LANGUAGE 'en_GB.UTF-8'
set -gx QT_QPA_PLATFORM 'wayland'
set -gx ELECTRON_OZONE_PLATFORM_HINT 'wayland'
set -gx LC_ALL 'en_GB.UTF-8'

zoxide init fish | source

source ~/.config/fish/custom-fish-config.fish

set -gx PATH $HOME/.local/bin $HOME/.cargo/bin $GOPATH/bin /home/ludv/coding/flutter/flutter $PATH

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/ludv/.ghcup/bin
