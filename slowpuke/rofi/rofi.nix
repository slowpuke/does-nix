{ pkgs, ... }:

{
    home.packages = with pkgs; [
        rofi
        betterlockscreen
        bc
        maim
        procps
        xdotool
    ];

    programs.rofi = {
        enable = true;
        theme = ./themes/type7-style7.rasi;
        terminal = "${pkgs.kitty}/bin/kitty";
        extraConfig = {
            modi = "drun";
        };
    };
}

