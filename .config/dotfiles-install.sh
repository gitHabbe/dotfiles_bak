echo ".dotfiles" >> .gitignore

git clone --bare https://github.com/gitHabbe/dotfiles $HOME/.dotfiles

source .habbe_config

mkdir -p .config-backup && \

dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}

dotfiles checkout

dotfiles config --local status.showUntrackedFiles no
