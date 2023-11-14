#!/usr/bin/bash
apt-get update
apt-get -y install software-properties-common
add-apt-repository -y ppa:neovim-ppa/unstable
apt-get update

install_packages() {
    local packages="git curl zsh build-essential"

    for package in ${packages}; do
        echo "Installing: $package"
        apt-get -y install "$package"
    done
}

install_packages

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
