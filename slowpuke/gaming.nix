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

        linuxKernel.packages.linux_6_9.xpadneo
    ];

    programs.steam = {
        enable = true;
        extraCompatPackages = with pkgs; [
            proton-ge-bin
        ];
    };

    hardware.xpadneo.enable = true;
}
