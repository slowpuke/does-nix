{ pkgs, ... }:

{
    imports = [
        ./slowpuke/terminal/kitty.nix
        ./slowpuke/terminal/zsh.nix
        ./slowpuke/rofi/rofi.nix        # move to bspwm.nix when ready
        ./slowpuke/git.nix
        ./slowpuke/nvim.nix
        ./slowpuke/gaming.nix
        ./slowpuke/systemd.nix
        ./slowpuke/programming/languages.nix
    ];

    home.username = "slowpuke";
    home.homeDirectory = "/home/slowpuke";
    nixpkgs.config.allowUnfree = true;

    home.stateVersion = "23.11";

    home.packages = with pkgs; [
        ### ART ###
        # alchemy
        aseprite
        # decker
        gimp
        # krita
        # opentabletdriver

        ### AUDIO ###
        # bespokesynth
        ungoogled-chromium              # iykyk
        # kid3
        helvum
        pavucontrol
        playerctl
        tauon

        ### MISC ###
        betterlockscreen                # rofi
        bitwarden-desktop
        bottles
        kdePackages.dolphin
        fluent-reader
        # gparted
        # keybase
        # keybase-gui
        # libreoffice-qt
        librewolf
        maim                            # rofi
        notepadqq
        obsidian
        parsec-bin
        # signal-desktop
        # sectacle
        telegram-desktop
        udiskie
        unzip
        vlc
        vesktop
        viewnior
        wine
        yt-dlp

        ### LIB ###
        bc                              # rofi
        ffmpeg
        libnotify
        procps                          # rofi
        xclip
        xdotool                         # rofi
    ];

    programs.home-manager.enable = true;

    # gtk.cursorTheme = {
    #     name = "Posy's Cursor Black";
    #     size = 32;
    #     package = pkgs.posy-cursors;
    # };

    home.pointerCursor = {
        x11.enable = true;
        gtk.enable = true;
        name = "Posy's Cursor";
        size = 32;
        package = pkgs.posy-cursors;
        x11.defaultCursor = "Posy's Cursor Black";
    };

    news.display = "silent";
}
