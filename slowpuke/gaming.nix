{ pkgs, ... }:

{
    home.packages = with pkgs; [
        steam
        heroic
        prismlauncher
        openmw
        runelite

        protonup-ng
        gamemode

        r2modman
        nexusmods-app

        duckstation
        pcsx2
        rpcs3
        snes9x
        
        gzdoom
        eureka-editor
    ];
}
