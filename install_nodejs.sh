#!/bin/bash

# fetch latest version number from nodejs.org
VERSION=$(curl -s https://nodejs.org/en/ | grep -Po '\d+\.\d\.\d' | head -1)
FILE="node-v$VERSION-linux-x64"
wget "https://nodejs.org/dist/v$VERSION/$FILE.tar.xz"
tar -xvf "$FILE.tar.xz"
sudo rm "$FILE.tar.xz"
sudo mv $FILE/bin/* "/usr/local/bin"
sudo rm -R $FILE*