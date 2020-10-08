#! /bin/bash

sudo sed -i.bak -e "s%http://jp.archive.ubuntu.com/ubuntu/%http://ftp.jaist.ac.jp/pub/Linux/ubuntu/%g" /etc/apt/sources.list

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

echo "set ssh-key to your github Account"

mkdir -p ~/atcoder

cp chokudai.sh ~/atcoder
cp template.cpp ~/atcoder

echo alias ch='sh ./chokudai.sh' >> ~/.bashrc
