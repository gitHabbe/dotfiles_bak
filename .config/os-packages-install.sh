apt-get update
apt-get -y install software-properties-common
add-apt-repository -y ppa:neovim-ppa/unstable
apt-get update

install_packages () {
  local packages=(
    git
    curl
    zsh
    build-essential
    neovim
  )

  for package in "${packages[@]}"
  do
    apt-get -y install $package
  done
  
}
