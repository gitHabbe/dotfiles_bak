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

cd $HOME
git clone --bare https://github.com/gitHabbe/dotfiles $HOME/.dotfiles
function dotfiles {
   /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}
mkdir -p .config-backup
dotfiles checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
else
  echo "Backing up pre-existing dot files.";
  dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
