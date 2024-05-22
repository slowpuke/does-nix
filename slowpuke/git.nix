{ config, pkgs, ... }:

{
    home.packages = with pkgs; [
        git
    ];

    programs.git = {
        enable = true;
        userName = "slowpuke";
        userEmail = "slowpuke@tuta.io";
        extraConfig = {
            init.defaultBranch = "main";
        };
    };
}
