{ config, pkgs, ... }:

{
    imports = [
        ./slowpuke/terminal/kitty.nix
        ./slowpuke/terminal/zsh.nix
        ./slowpuke/programming/languages.nix
        ./slowpuke/git.nix
        ./slowpuke/vim.nix
    ];

    home.username = "slowpuke";
    home.homeDirectory = "/home/slowpuke";
    nixpkgs.config.allowUnfree = true;

    home.stateVersion = "23.11";

    # general packages
    home.packages = with pkgs; [
        bottom
        discord
        vivaldi
        gwe
        nerdfonts
        runelite
        kate
        ripgrep
        spotify
        telegram-desktop
        wine
        rofi
        obsidian
        gparted
        unzip
        fastfetch
    ];

    programs.home-manager.enable = true;

}
