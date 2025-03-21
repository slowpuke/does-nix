{ pkgs, ... }:

let
    browser = "librewolf.desktop";
    image_viewer = "feh.desktop";
    video_player = "vlc.desktop";
    audio_player = "tauonmb.desktop";
in
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
        lmms
        pavucontrol
        playerctl
        tauon

        ### MISC ###
        kdePackages.ark
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
        zathura

        ### LIB ###
        ffmpeg
        libnotify
        xclip
    ];

    home.pointerCursor = {
        x11.enable = true;
        gtk.enable = true;
        name = "Posy_Cursor_Black";
        size = 32;
        package = pkgs.posy-cursors;
        x11.defaultCursor = "Posy's Cursor Black";
    };

    xdg.mimeApps = {
        enable = true;
        defaultApplications = {  
            "x-scheme-handler/http" = browser;
            "x-scheme-handler/https" = browser;
            "text/html" = browser;
            "text/css" = browser;
            "image/png" = image_viewer;
            "image/jpg" = image_viewer;
            "image/jpeg" = image_viewer;
            # "image/gif" = image_viewer;
            "video/mp4" = video_player;
            "video/webm" = video_player;
            "video/mpeg" = video_player;
            "video/mkv" = video_player;
            "video/m4v" = video_player;
            "audio/mp3" = audio_player;
            "audio/flac" = audio_player;
            "audio/wav" = audio_player;
            "application/pdf" = "zathura.desktop";
        };
    };
}
