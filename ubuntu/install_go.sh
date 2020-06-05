#!/bin/bash

VERSION=$(
  curl -s https://golang.org/dl/ | grep -Po -m 1 'go1.1\d\.\d' | head -1
)
TARGET_FILE="$VERSION.linux-amd64.tar.gz"

curl -O https://storage.googleapis.com/golang/$TARGET_FILE
tar -xvf $TARGET_FILE
sudo rsync -a -v go /usr/local --remove-source-files
sudo rm $TARGET_FILE

if grep -q "GOPATH" ~/.profile;
then echo 'GOPATH already configured'
else
  sudo mkdir -p ~/go_projects
  echo "export GOPATH=$HOME/go_projects" >> ~/.profile
  echo "export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin" >> ~/.profile
fi
