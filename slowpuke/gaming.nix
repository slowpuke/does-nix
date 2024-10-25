{ config, pkgs, ... }:

{
    home.packages = with pkgs; [
        steam
        heroic
        prismlauncher
        openmw
        runelite

        protonup-ng
        gamemode
        steamtinkerlaunch

        r2modman

        duckstation
        pcsx2
        snes9x
        
        # gzdoom
        # slade
    ];
}
