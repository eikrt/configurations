#!/bin/bash

sudo systemctl disable lightdm
sudo apt install curl

source ./utils/env
# nix install
source ./utils/nix
# x configuration
source ./utils/x
# vim configuration
source ./utils/vim
# dwm configuration
source ./utils/dwm
# vim configuration
source ./utils/vim

