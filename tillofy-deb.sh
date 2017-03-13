#!/bin/bash

packages="git htop powerline zsh"
username="$(whoami)"
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install ${packages}
sudo apt-get -y autoremove

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sed -i 's/"robbyrussell"/"agnoster"/' ~/.zshrc


sudo su -c "usermod -s /bin/zsh $username"

exit   
