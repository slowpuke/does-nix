{ config, pkgs, ... }:

{
    home.packages = with pkgs; [
        steam
        heroic
        prismlauncher
        openmw

        protonup-ng
        gamemode
        steamtinkerlaunch

        duckstation
        pcsx2
    ];
}
