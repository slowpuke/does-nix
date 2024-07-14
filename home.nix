{ config, pkgs, ... }:

{
    imports = [
        ./slowpuke/terminal/kitty.nix
        ./slowpuke/terminal/zsh.nix
        ./slowpuke/rofi/rofi.nix
        ./slowpuke/git.nix
        ./slowpuke/nvim.nix
        ./slowpuke/gaming.nix
        ./slowpuke/systemd.nix
        ./slowpuke/programming/languages.nix
        # ./slowpuke/window-manager/bspwm.nix
        # ./slowpuke/window-manager/polybar.nix
    ];

    home.username = "slowpuke";
    home.homeDirectory = "/home/slowpuke";
    nixpkgs.config.allowUnfree = true;

    home.stateVersion = "23.11";

    home.packages = with pkgs; [
        aseprite
        bitwarden-desktop
        # discord
        dolphin
        gimp
        godot_4
        gparted
        gwe
        kate
        ldtk
        libnotify
        nerdfonts
        obsidian
        runelite    # move to gaming.nix
        signal-desktop
        spotify
        telegram-desktop
        unzip
        vivaldi
        vlc
        wine
        xclip
        yt-dlp
    ];

    programs.home-manager.enable = true;
}
