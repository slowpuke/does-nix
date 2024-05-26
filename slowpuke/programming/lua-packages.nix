{ pkgs, ... }:

{
    home.packages = with pkgs; [
        lua53Packages.cjson
    ];
}

# https://github.com/NixOS/nixpkgs/blob/master/doc/languages-frameworks/lua.section.md
