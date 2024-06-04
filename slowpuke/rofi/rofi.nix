{ config, pkgs, ... }:

{
    programs.rofi = {
        enable = true;
        package = pkgs.rofi.override { 
            plugins = with pkgs; [ 
                rofi-calc
                rofi-systemd
                rofi-bluetooth
                rofi-power-menu
            ]; 
        };
        # theme by Murzchnvok
        # https://github.com/Murzchnvok/rofi-collection
        theme = ./murz.rasi;
        terminal = "${pkgs.kitty}/bin/kitty";
        extraConfig = {
            modi = "drun,calc,power-menu:${pkgs.rofi-power-menu}/bin/rofi-power-menu,systemd:${pkgs.rofi-systemd}/bin/rofi-systemd,bluetooth:${pkgs.rofi-bluetooth}/bin/rofi-bluetooth";
        };
    };
}
