{ config, pkgs, ... }:

{
    home.packages = with pkgs; [
        # c
        # clang
        gcc

        rustup

        # lua
        lua
        love

        sbcl
        godot_4
    ];
}
