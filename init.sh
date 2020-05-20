curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.vim/dein

rm installer.sh

cp ./.vimrc ~/

echo "open vim and type\n:call#install())"

git config --global user.name "Piffett"
git config --global user.email 8117070@ed.tus.ac.jp
