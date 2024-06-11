{ config, pkgs, ... }:

{
    imports = [
        ./slowpuke/terminal/kitty.nix
        ./slowpuke/terminal/zsh.nix
        # ./slowpuke/programming/languages.nix
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
        gimp
        gparted
        gwe
        libnotify
        nerdfonts
        obsidian
        runelite
        signal-desktop
        spotify
        telegram-desktop
        unzip
        vivaldi
        vlc
        wine
        xclip
    ];

    programs.home-manager.enable = true;

}
