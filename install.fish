#!/usr/bin/env fish

function install_omf_package_if_not_exist
    if test (omf list | grep -c "$argv") -eq 0
        omf install "$argv"
    end
end

# Install oh-my-fish if it isn't installed
if [ ! -d ~/.local/share/omf ]
    curl -L https://get.oh-my.fish | fish
end

# Install oh-my-fish plugins
install_omf_package_if_not_exist bobthefish
install_omf_package_if_not_exist colored-man-pages
install_omf_package_if_not_exist extract
install_omf_package_if_not_exist fzf
install_omf_package_if_not_exist gi
install_omf_package_if_not_exist git-flow
install_omf_package_if_not_exist sudope
install_omf_package_if_not_exist wttr

# Update fish completions (auto generated from man pages)
fish_update_completions
