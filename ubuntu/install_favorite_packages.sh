#!/bin/bash

# add repositories
echo 'removing repositories and re-adding them'
sudo add-apt-repository -r ppa:kgilmer/regolith-stable -y
sudo add-apt-repository -r ppa:otto-kesselgulasch/gimp -y
sudo add-apt-repository ppa:kgilmer/regolith-stable -y
sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y
sudo add-apt-repository -r ppa:snwh/ppa -y
sudo add-apt-repository -u ppa:snwh/ppa -y


# install applications
echo "running apt update and then apt install packages"
sudo apt update
sudo apt install -y software-properties-common\
		apt-transport-https\
		wget\
		regolith-desktop\
		git\
		gimp\
		pavucontrol\
		flameshot\
		gdebi\
		virtualbox\
		vagrant\
	  	paper-icon-theme\
		gnome-tweak-tool\
		zsh\
		powerline\
		fonts-powerline\
		shellcheck