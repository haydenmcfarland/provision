
# install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install packages
brew cask install $(cat ui_packages.txt)
brew install $(cat packages.txt)

cp -f 'settings.json' ~/'Library/Application Support/Code/User/settings.json'