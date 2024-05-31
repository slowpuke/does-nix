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
    };

    programs.sxhkd = {
        enable = true;
    };
}
