{ config, pkgs, ... }:

{
    home.packages = with pkgs; [
        # clang
        gcc
        rustup
        lua
        love
        sbcl
        godot_4

        # LSPs
        clang-tools
        lua-language-server
    ];
}
