#!/bin/bash

# add repositories
echo 'removing repositories and re-adding them'
sudo add-apt-repository -r ppa:lutris-team/lutris -y
sudo add-apt-repository ppa:lutris-team/lutris -y
sudo apt-get update
sudo apt-get install lutris