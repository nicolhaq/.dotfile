if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end
set -x EDITOR nvim
set -x BROWSER /usr/bin/firefox
set -x MAIL nhaquet@student.42.fr
#neofetch | lolcat
