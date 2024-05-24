{ config, pkgs, lib, ... }:

{
    home.packages = with pkgs; [
        rofi
    ];

    programs.rofi = {
        enable = true;
        theme = ./murz.rasi;
    };
}
