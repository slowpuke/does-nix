{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
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

    programs.steam = {
        enable = true;
        extraCompatPackages = with pkgs; [
            proton-ge-bin
        ];
    };
}
