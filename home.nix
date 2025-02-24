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

    gtk.cursorTheme = {
        name = "Posy's Cursor Black";
        size = 32;
        package = pkgs.posy-cursors;
    };

    home.stateVersion = "23.11";

    home.packages = with pkgs; [
        ### ART ###
        # alchemy
        aseprite
        gimp
        # krita
        # opentabletdriver

        ### AUDIO ###
        # bespokesynth
        ungoogled-chromium  # iykyk
        # kid3
        helvum
        pavucontrol
        playerctl
        tauon

        ### MISC ###
        betterlockscreen            # rofi
        bitwarden-desktop
        bottles
        dolphin
        fluent-reader
        # gparted
        # keybase
        # keybase-gui
        # libreoffice-qt
        librewolf
        # maim                        # rofi
        notepadqq
        obsidian
        parsec-bin
        # signal-desktop
        # sectacle
        telegram-desktop
        unzip
        vlc
        vesktop
        viewnior
        wine
        xfce.xfce4-power-manager    # rofi
        yt-dlp

        ### LIB ###
        ffmpeg
        libnotify
        procps                      # rofi
        xclip
        xdotool                     # rofi
    ];

    programs.home-manager.enable = true;
}
