{ pkgs, ... }:

{
    imports = [
        ../slowpuke/terminal/kitty.nix
        ../slowpuke/terminal/zsh.nix
        ../slowpuke/window-manager/bspwm/bspwm.nix
        ../slowpuke/git.nix
        ../slowpuke/nvim.nix
        ../slowpuke/programming/languages.nix
    ];

    home.packages = with pkgs; [
        bitwarden-desktop
        kdePackages.dolphin
        librewolf
        notepadqq
        obsidian
        # signal-desktop
        telegram-desktop
        udiskie
        unzip
        # vesktop
        viewnior
        wine

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
}
