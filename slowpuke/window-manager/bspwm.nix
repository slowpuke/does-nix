{ config, pkgs, ... }:

{
    home.packages = with pkgs; [
        bspwm
        sxhkd
        nitrogen
        picom
        lxde.lxsession
    ];

    # remember to enable bspwm in configuration.nix as well, i think
    programs.bspwm = {
        enable = true;
        # these should work, but are the example options of bspwm, customize when everything works
        settings = { 
            border_width = 2; 
            window_gap = 12;
            split_ratio = 0.52;
            borderless_monocle = true;
        };
    };

    programs.sxhkd = {
        enable = true;
        keybinding = {
            # i have no idea if those work
            "super + Return" = pkgs.kitty;
            "super + space" = "rofi -show run";
        };
    };
}
