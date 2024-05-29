{ config, pkgs, ... }:

{
    imports = [
        ./slowpuke/terminal/kitty.nix
        ./slowpuke/terminal/zsh.nix
        ./slowpuke/programming/languages.nix
        ./slowpuke/rofi/rofi.nix
        ./slowpuke/git.nix
        ./slowpuke/vim.nix
        ./slowpuke/systemd.nix
    ];

    home.username = "slowpuke";
    home.homeDirectory = "/home/slowpuke";
    nixpkgs.config.allowUnfree = true;

    home.stateVersion = "23.11";

    home.packages = with pkgs; [
        bottom
        discord
        vivaldi
        gwe
        nerdfonts
        runelite
        ripgrep
        gimp
        spotify
        telegram-desktop
        # signal
        wine
        obsidian
        gparted
        unzip
        fastfetch
        vlc
        ldtk    # for 2d level editor for games
        xclip
    ];

    # gtk.enable = true;
    # qt.enable = true;
    programs.home-manager.enable = true;

}
