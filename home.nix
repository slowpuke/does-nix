{ pkgs, ... }:

{
    imports = [
        ./profiles/slowpuke.nix
    ];

    home.username = "slowpuke";
    home.homeDirectory = "/home/slowpuke";
    nixpkgs.config.allowUnfree = true;
    home.stateVersion = "23.11";
    programs.home-manager.enable = true;
    news.display = "silent";
}
