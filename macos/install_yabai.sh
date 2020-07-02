xcode-select --install

# disable SIP? no for now

# clone tap
brew tap koekeishiya/formulae

# install the latest stable version
brew install yabai

# install scripting-addition (will work only if you have SIP disable)
sudo yabai --install-sa

# default dotfile for yabai
cp /usr/local/opt/yabai/share/yabai/examples/yabairc ~/.yabairc

# default dotfile for skhd
cp /usr/local/opt/yabai/share/yabai/examples/skhdrc ~/.skhdrc

# start yabai as a service
brew services start koekeishiya/formulae/yabai

# install the latest stable version
brew install koekeishiya/formulae/skhd

# start skhd as a service
brew services start skhd
