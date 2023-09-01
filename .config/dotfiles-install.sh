# echo ".dotfiles" >> .gitignore
#
# git clone --bare https://github.com/gitHabbe/dotfiles $HOME/.dotfiles
#
# source .habbe_config
#
# mkdir -p .config-backup && dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
#
# dotfiles checkout
#
# dotfiles config --local status.showUntrackedFiles no

# -------

# apt-get -y install software-properties-common
# add-apt-repository ppa:neovim-ppa/unstable
# apt-get update
# apt-get -y install git curl zsh build-essential neovim
cd $HOME
git clone --bare https://github.com/gitHabbe/dotfiles $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
mkdir -p .config-backup
dotfiles checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
else
  echo "Backing up pre-existing dot files.";
  dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
dotfiles checkout
dotfiles config status.showUntrackedFiles no
