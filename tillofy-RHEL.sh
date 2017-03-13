#!/bin/bash

packages="epel-release git htop powerline zsh"
username="$(whoami)"
sudo yum -y update
sudo yum -y install ${packages}
sudo yum -y autoremove

#zshscript="$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

#sudo sed -e "s/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"agnoster\"" ~/.zshrc > ~/.zshrcOLD
#sudo mv ~/.zshrcOLD ~/.zshrc

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

sed -i 's/"robbyrussell"/"agnoster"/' ~/.zshrc


sudo su -c "usermod -s /bin/zsh $username"

exit   
