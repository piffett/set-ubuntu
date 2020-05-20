#! /bin/bash

sudo apt update
sudo apt -y upgrade

sudo apt -y install build-essential

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.vim/dein

rm installer.sh

cp ./.vimrc ~/

echo "open vim and type\n:call#install())"

echo "Input your GitHub UserName: "
read username_str

git config --global user.name "${username_str}"

echo "Input your email: "
read email_str
git config --global user.email $email_str

