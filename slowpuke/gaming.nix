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
        (retroarch.withCores (cores: with cores; [
            bsnes-hd
            citra
            gambatte
            genesis-plus-gx
            mupen64plus
            swanstation
        ]))
        # rpcs3
        
        gzdoom
        eureka-editor

        godot_4
        # ldtk
        tiled
    ];
}
