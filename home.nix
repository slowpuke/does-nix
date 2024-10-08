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
        # aseprite  # install only if necessary cause you have to build it from source
        chatterino2
        bitwarden-desktop
        # bitwarden-cli
        bottles
        # discord
        dolphin
        gimp
        godot_4
        # gparted
        # gwe
        # kate
        # keybase
        # keybase-gui
        krita
        ldtk
        libnotify
        libreoffice-qt
        nerdfonts
        obsidian
        opentabletdriver
        signal-desktop
        spotify
        telegram-desktop
        tor-browser
        unzip
        vivaldi
        vlc
        wine
        xclip
        yt-dlp
        wacomtablet
        weechat
    ];

    programs.home-manager.enable = true;
}
