{ config, pkgs, ... }:

# https://wiki.archlinux.org/title/Rofi -- stuff you can add to rofi

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
        # plugins = with pkgs; [
        #     rofi-calc
        #     rofi-systemd
        #     rofi-bluetooth
        #     rofi-power-menu
        # ];
        terminal = "${pkgs.kitty}/bin/kitty";
        extraConfig = {
            modi = "drun,calc";
        };
    };
}

# other than calc packages aren't working, this thread might have something
# https://old.reddit.com/r/NixOS/comments/178b1zv/any_way_to_use_rofi_plugins_without_home_manager/'
