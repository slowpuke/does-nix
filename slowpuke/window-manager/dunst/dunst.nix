{ pkgs, ... }:

{
    # change to env packages
    home.packages = with pkgs; [
        dunst
        colloid-icon-theme
    ];

    services.dunst = {
        enable = true;
        configFile = ./dunstrc;
    };
}
