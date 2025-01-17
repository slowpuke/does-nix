{ pkgs, ... }:

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

    # TODO: group the apps by category
    home.packages = with pkgs; [
        aseprite
        cockatrice
        bitwarden-desktop
        bottles
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
        obsidian
        # opentabletdriver
        pavucontrol
        rnote
        signal-desktop
        spotify
        tauon
        telegram-desktop
        tiled
        unzip
        vlc
        wine
        xclip
        youtube-music
        yt-dlp
        vesktop
        # wacomtablet
    ];

    programs.home-manager.enable = true;
}
