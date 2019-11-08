#!/bin/bash

curl -O https://storage.googleapis.com/golang/go1.13.4.linux-amd64.tar.gz
tar -xvf go1.13.4.linux-amd64.tar.gz
sudo mv go /usr/local
rm go1.13.4.linux-amd64.tar.gz

if grep -q "GOPATH" ~/.profile;
then echo 'GOPATH already configured'
else
echo "export GOPATH=$HOME/go_projects" >> ~/.profile
echo "export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin" >> ~/.profile
fi

sudo mkdir ~/go_projects