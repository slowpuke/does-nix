{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        steam
        heroic
        prismlauncher
        openmw

        # protonup-qt
        protonup-ng
        gamemode

        duckstation
        pcsx2
    ];

    # what if i created a similar file to this one and imported in configuration.nix, or better just
    # import this one in configuration.nix, think about it
    programs.steam = {
        enable = true;
        extraCompatPackages = with pkgs; [
            proton-ge-bin
        ];
    };
}
