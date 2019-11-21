#!/bin/bash

sudo add-apt-repository -r ppa:oibaf/graphics-drivers -y
sudo add-apt-repository ppa:oibaf/graphics-drivers

sudo apt update
sudo apt upgrade
sudo apt install libvulkan1 mesa-vulkan-drivers vulkan-utils