#!/usr/bin/env sh

nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install

nix-shell -p git
cd || return
git clone git@github.com:slowpuke/does-nix.git

cd ~/does-nix || return
sudo nixos-rebuild switch --flake .
home-manager switch --flake .
