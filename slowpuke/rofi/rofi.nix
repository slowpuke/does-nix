{ pkgs, ... }:

{
    programs.rofi = {
        enable = true;
        package = pkgs.rofi.override { 
            plugins = with pkgs; [ 
                rofi-power-menu
            ]; 
        };
        # theme by Murzchnvok -- https://github.com/Murzchnvok/rofi-collection
        # with changed colors
        theme = ./themes/type7-style7.rasi;
        terminal = "${pkgs.kitty}/bin/kitty";
        extraConfig = {
            modi = "drun,power-menu:${pkgs.rofi-power-menu}/bin/rofi-power-menu";
        };
    };
}

# use this repo https://github.com/adi1090x/rofi
# install the applets: brightness, powermenu, screenshot
# Launcher: Type 7, Style 7
# Applets: Type 4

# you need to make find/write a plugin for bluetooth
# if the applet from the repo above work, you can delete the power-menu from here too
# so everything is stored in your repo

# TODO: powermenu should be fine, brightness the light command cant find the monitor, and the screenshot doesnt have the dependencies installed yet
# you also need to fix the icons to brightness and screenshot
# also change the colorscheme a bit, make the main color eerie black also in the main launcher, as well as the applets

# TODO: for the bluetooth custom script youll have to use another theme, one that looks more like a list, same for the udiks script
