if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

set -gx EDITOR nvim
set -gx BROWSER /usr/bin/firefox
set -gx PATH /home/grolash/.cargo/bin $PATH
set -gx MAIL nhaquet@student.42.fr
#neofetch | lolcat
