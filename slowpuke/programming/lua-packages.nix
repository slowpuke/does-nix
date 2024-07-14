{ pkgs, ... }:

{
    home.packages = with pkgs; [
        love
        (lua5_3.withPackages(ps: with ps; [
            busted
            cjson
            luafilesystem 
        ]))
    ];
}

