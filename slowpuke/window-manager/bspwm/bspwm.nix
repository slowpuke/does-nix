{ pkgs, ... }:

{
    imports = [
        ../../rofi/rofi.nix
        ../picom/picom.nix
        ../dunst/dunst.nix
        ../polybar/polybar.nix
    ];

    home.packages = with pkgs; [
        bspwm
        bsp-layout
        sxhkd
        feh
        lxde.lxsession
    ];

    home.file.".config/bspwm/bspwmrc".source = ./bspwmrc;
    home.file.".config/sxhkd/sxhkdrc".source = ./sxhkdrc;
}
