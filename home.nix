{ config, pkgs, ... }:

{
    imports = [
        ./slowpuke/terminal/kitty.nix
        ./slowpuke/terminal/zsh.nix
        ./slowpuke/programming/languages.nix
        ./slowpuke/git.nix
    ];

    home.username = "slowpuke";
    home.homeDirectory = "/home/slowpuke";
    nixpkgs.config.allowUnfree = true;

    home.stateVersion = "23.11"; # Please read the comment before changing.

    # The home.packages option allows you to install Nix packages into your
    # environment.
    home.packages = with pkgs; [
        bottom
        discord
        vim
        vivaldi
        git
        gwe
        nerdfonts
        runelite
        kate
        neovim
        ripgrep
        spotify
        telegram-desktop
        wine
        rofi
        obsidian
        gparted

    ];

    # for now this works, hopefully i wont find any major problems
    # as of now all the plugins installed, although give erros, but thats cause theres no gcc, nerdfonts, ripgrep, etc
    # home.file."./.config/nvim/".source = ./nvim;

    programs.home-manager.enable = true;

}
