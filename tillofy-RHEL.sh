#!/bin/bash
username="$(whoami)"
sudo yum -y update
sudo yum -y install epel-release
sudo yum -y install git
sudo yum -y install htop
sudo yum -y install powerline
sudo yum -y install zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sudo su
usermod -s /bin/zsh $username

exit   
