#!/bin/bash


MAIN_USER="eino"

sudo systemctl disable lightdm
sudo apt install curl

# nix install

sudo mkdir /nix
curl -L https://nixos.org/nix/install | sh -s # install nix
mkdir /home/$MAIN_USER/.config/nixpkgs
ln -s /home/$MAIN_USER/repo/configurations/system/nix/config.nix /home/$MAIN_USER/.config/nixpkgs/config.nix
echo "if [ -e /home/eino/.nix-profile/etc/profile.d/nix.sh ]; then . /home/eino/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer" >> /home/$MAIN_USER/.bashrc
ln -s /home/$MAIN_USER/repo/configurations/system/nix/default.nix /home/$MAIN_USER/default.nix
# x configuration

ln -s /home/$MAIN_USER/configurations/desktop/x/.xinitrc /home/$MAIN_USER/.xinitrc
ln -s /home/$MAIN_USER/configurations/desktop/x/lightdm/dwm.session /usr/share/xsessions/dwm.desktop # this is not used since lightdm is disabled
# vim configuration

ln -s /home/$MAIN_USER/repo/configurations/editors/vim/.vimrc /home/$MAIN_USER/.vimrc

# dwm configuration

sudo apt install libx11-dev libxft-dev libxinerama-dev build-essential
git clone https://git.suckless.org/dwm /home/$MAIN_USER/dwm
rm /home/$MAIN_USER/dwm/dwm.c
ln -s /home/$MAIN_USER/repo/configurations/desktop/dwm/config.h /home/$MAIN_USER/dwm/config.h
ln -s /home/$MAIN_USER/repo/configurations/desktop/dwm/dwm.c /home/$MAIN_USER/dwm/dwm.c

cd /home/$MAIN_USER/dwm
sudo make clean install
cd /home/$MAIN_USER

# vim configuration

mkdir -p /home/$MAIN_USER/.vim/pack/themes/start

