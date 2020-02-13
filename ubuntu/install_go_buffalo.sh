#!/bin/bash

wget https://github.com/gobuffalo/buffalo/releases/download/v0.15.0/buffalo_0.15.0_linux_amd64.tar.gz
tar -xvzf buffalo_0.15.0_linux_amd64.tar.gz
sudo rm buffalo_0.15.0_linux_amd64.tar.gz
sudo mv buffalo /usr/local/bin/buffalo