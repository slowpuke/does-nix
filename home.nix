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
        discord
        keepassxc
        vivaldi
        gwe
        nerdfonts
        runelite
        gimp
        spotify
        telegram-desktop
        signal-desktop
        wine
        obsidian
        gparted
        unzip
        vlc
        ldtk    # for 2d level editor for games
        xclip
    ];

    # gtk.enable = true;
    # qt.enable = true;
    programs.home-manager.enable = true;

}
