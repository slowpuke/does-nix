{ config, pkgs, ... }:

{
    imports = [
        ./lua-packages.nix
    ];

    home.packages = with pkgs; [
        gcc
        cmake
        rustup
        lua53Packages.lua
        love
        sbcl
        godot_4
        ghc
        cabal-install
        cabal2nix
    ];
}
