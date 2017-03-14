#!/bin/bash

packages="epel-release git htop python-pip zsh"
username="$(whoami)"

if [ ! "$1" = "" ]
	sudo yum -y update --exclude="$1"
else
	sudo yum -y update
fi

sudo yum -y install ${packages}
sudo yum -y autoremove
sudo pip install powerline-status

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sed -i 's/"robbyrussell"/"agnoster"/' ~/.zshrc


sudo su -c "usermod -s /bin/zsh $username"

exit   
