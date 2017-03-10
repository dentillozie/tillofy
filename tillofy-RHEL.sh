#!/bin/bash

packages="epel-release git htop powerline zsh"
username="$(whoami)"
sudo yum -y update
sudo yum -y install ${packages}
sudo yum -y autoremove

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sudo su
usermod -s /bin/zsh $username

exit   
