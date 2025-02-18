{ pkgs, ... }:

{
    home.packages = with pkgs; [
        steam
        heroic
        prismlauncher
        openmw
        runelite
        # devilutionx
        # cockatrice

        protonup-ng
        gamemode

        # r2modman
        nexusmods-app

        # duckstation
        pcsx2
        # retroarch-full
        (retroarch.withCores (cores: with cores; [
            mupen64plus
        ]))
        # rpcs3
        # snes9x
        
        gzdoom
        eureka-editor

        godot_4
        # ldtk
        tiled
    ];
}
