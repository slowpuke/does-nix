{ config, pkgs, ... }:

{
    imports = [
        ./slowpuke/terminal/kitty.nix
        ./slowpuke/terminal/zsh.nix
        ./slowpuke/rofi/rofi.nix
        ./slowpuke/git.nix
        ./slowpuke/vim.nix
        ./slowpuke/systemd.nix
        ./slowpuke/window-manager/bspwm.nix
        # ./slowpuke/window-manager/polybar.nix
    ];

    home.username = "slowpuke";
    home.homeDirectory = "/home/slowpuke";
    nixpkgs.config.allowUnfree = true;

    home.stateVersion = "23.11";

    home.packages = with pkgs; [
        aseprite
        discord
        dolphin
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

    # programs.neovim = { 
    #     enable = true;
    #     # maybe something like this? this doesn't work but maybe this is the correct way to do it
    #     # look at that guy's config again, cause i think he does it this way I think
    #     plugins = with pkgs.vimPlugins; [
    #         clangd_extensions-nvim
    #         lsp-zero-nvim
    #     ];
    # };
}
