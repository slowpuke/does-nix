{ config, pkgs, ... }:

{
    imports = [
        ./lua-packages.nix
    ];

    home.packages = with pkgs; [
        # clangStdenv
        # llvmPackages.libcxxClang
        gcc
        cmake
        rustup
        # lua
        lua53Packages.lua
        love
        sbcl
        godot_4

        # LSPs
        # clang-tools
        # lua-language-server
    ];
}
