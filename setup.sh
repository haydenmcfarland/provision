#!/bin/bash

./install_favorite_packages.sh
./install_chrome.sh
./install_rbenv.sh
./install_zsh.sh
./install_code.sh

echo 'cleaning up obsolete packages...'
sudo apt auto-remove -y

./configure_regolith.sh
