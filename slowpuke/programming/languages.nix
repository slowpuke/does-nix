{ config, pkgs, ... }:

{
    imports = [
        ./lua-packages.nix
    ];

    home.packages = with pkgs; [
        # clangStdenv
        gcc
        cmake
        rustup
        # lua
        lua53Packages.lua
        love
        sbcl
        godot_4
        ghc
        cabal-install
        cabal2nix

        # LSPs
        # clang-tools
        # lua-language-server
    ];
}
