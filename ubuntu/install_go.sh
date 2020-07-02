#!/bin/bash

# used to specify where the go work directory will be located
GO_DIR=$HOME/Git/go

# fetch latest go version from website
VERSION=$(
  curl -s https://golang.org/dl/ | grep -Po -m 1 'go1.1\d\.\d' | head -1
)

# download and extract go and move to /usr/local
TARGET_FILE="$VERSION.linux-amd64.tar.gz"
curl -O https://storage.googleapis.com/golang/$TARGET_FILE
tar -xvf $TARGET_FILE
sudo rsync -a -v go /usr/local --remove-source-files
sudo rm $TARGET_FILE

# set up GOPATH
if grep -q "GOPATH" ~/.profile;
then echo 'GOPATH already configured'
else
  sudo mkdir -p $GO_DIR
  echo "export GOROOT=/usr/local/go" >> ~/.profile
  echo "export GOPATH=$GO_DIR" >> ~/.profile
  echo "export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin" >> ~/.profile
fi
