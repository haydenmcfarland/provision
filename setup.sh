#!/bin/bash

./install_favorite_packages.sh
./install_chrome.sh
./install_rbenv.sh

echo "auto remove unneeded packages"
sudo apt auto-remove -y

# theming
echo "performing theming..."
cp -n /etc/regolith/styles/root ~/.Xresources-regolith

# zsh configuration

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
sudo cp -n ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
sed -i 's/robbyrussell/agnoster/g' ~/.zshrc
if grep -q "DEFAULT_USER" ~/.zshrc;
then echo "not adding default user to ~/.zshrc"
else sudo echo "DEFAULT_USER=$USER" >> ~/.zshrc
fi

sudo rm -r ~/.zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
if grep -q "zsh-syntax-highlighting" ~/.zshrc
then "zsh-syntax-highlighting already installed"
else sudo echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"
fi

sudo rm -r ~/.oh-my-zsh/custom/plugins/zsh-autosugesstions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions)/g' ~/.zshrc

sudo chsh -s /usr/bin/zsh

# create bin directory
echo "creating $HOME/bin directory if it doesn't exist"
sudo mkdir -p $HOME/bin
if grep -q "~/bin" ~/.zshrc;
then echo "ignoring adding bin path"
else sudo echo "export PATH=$PATH:~/bin" >> ~/.zshrc
fi
