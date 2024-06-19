{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        (lua5_3.withPackages(ps: with ps; [
            busted
            cjson
            luafilesystem 
        ]))
    ];
}

