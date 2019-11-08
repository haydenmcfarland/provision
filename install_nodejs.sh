#!/bin/bash

wget https://nodejs.org/dist/v13.1.0/node-v13.1.0-linux-x64.tar.xz
tar -xvf node-v13.1.0-linux-x64.tar.xz
sudo rm node-v13.1.0-linux-x64.tar.xz
sudo mv node-v13.1.0-linux-x64/bin/* /usr/local/bin
sudo rm -R node-v13.1.0-linux-x64*