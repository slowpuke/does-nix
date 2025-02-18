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
        # ./slowpuke/window-manager/bspwm/bspwm.nix
        ./slowpuke/window-manager/polybar/polybar.nix
    ];

    home.username = "slowpuke";
    home.homeDirectory = "/home/slowpuke";
    nixpkgs.config.allowUnfree = true;

    home.stateVersion = "23.11";

    home.packages = with pkgs; [
        # ART
        # alchemy
        aseprite
        gimp
        # krita
        # opentabletdriver

        # AUDIO
        # bespokesynth
        ungoogled-chromium  # iykyk
        # kid3
        helvum
        pavucontrol
        playerctl
        tauon

        # MISC
        bitwarden-desktop
        bottles
        dolphin
        fluent-reader
        # gparted
        # keybase
        # keybase-gui
        # libreoffice-qt
        librewolf
        notepadqq
        obsidian
        # signal-desktop
        telegram-desktop
        unzip
        vlc
        wine
        yt-dlp
        vesktop

        # LIB
        ffmpeg
        libnotify
        xclip
    ];

    programs.home-manager.enable = true;
}
