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
        ./slowpuke/window-manager/polybar.nix
    ];

    home.username = "slowpuke";
    home.homeDirectory = "/home/slowpuke";
    nixpkgs.config.allowUnfree = true;

    home.stateVersion = "23.11";

    home.packages = with pkgs; [
        aseprite  # install only if necessary cause you have to build it from source
        chatterino2
        bitwarden-desktop
        bottles
        # discord
        (discord.override {
            withVencord = true;
        })
        dolphin
        ffmpeg
        gimp
        godot_4
        # gparted
        # gwe
        kid3
        # keybase
        # keybase-gui
        krita
        helvum
        ldtk
        libnotify
        libreoffice-qt
        librewolf
        nerdfonts
        obsidian
        # opentabletdriver
        pavucontrol
        qjackctl
        rnote
        signal-desktop
        spotify
        strawberry
        tauon
        telegram-desktop
        tor-browser
        unzip
        vivaldi
        vlc
        wine
        xclip
        yt-dlp
        wacomtablet
        vesktop
    ];

    programs.home-manager.enable = true;
}
