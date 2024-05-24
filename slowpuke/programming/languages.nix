{ config, pkgs, ... }:

{
    home.packages = with pkgs; [
        # clangStdenv
        # llvmPackages.libcxxClang
        # gcc
        cmake
        rustup
        lua
        love
        sbcl
        godot_4

        # LSPs
        # clang-tools
        # lua-language-server
    ];
}
