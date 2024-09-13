{ config, pkgs, ... }:

{
    home.packages = with pkgs; [
        steam
        heroic
        prismlauncher
        openmw
        runelite

        # path-of-building

        protonup-ng
        gamemode
        steamtinkerlaunch

        r2modman

        duckstation
        pcsx2
    ];
}
