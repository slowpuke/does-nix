{ pkgs, ... }:

{
    imports = [
        ../slowpuke/terminal/kitty.nix
        ../slowpuke/terminal/zsh.nix
        ../slowpuke/window-manager/bspwm/bspwm.nix
        ../slowpuke/git.nix
        ../slowpuke/nvim.nix
        ../slowpuke/gaming.nix
        ../slowpuke/systemd.nix
        ../slowpuke/programming/languages.nix
    ];

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
        bitwarden-desktop
        bottles
        kdePackages.dolphin
        fluent-reader
        # gparted
        # keybase
        # keybase-gui
        # libreoffice-qt
        librewolf
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
        ffmpeg
        libnotify
        xclip
    ];

    # gtk.cursorTheme = {
    #     name = "Posy's Cursor Black";
    #     size = 32;
    #     package = pkgs.posy-cursors;
    # };

    home.pointerCursor = {
        x11.enable = true;
        gtk.enable = true;
        name = "Posy_Cursor_Black";
        size = 32;
        package = pkgs.posy-cursors;
        x11.defaultCursor = "Posy's Cursor Black";
    };
}
