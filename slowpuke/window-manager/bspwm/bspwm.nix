{ pkgs, ... }:

{
    imports = [
        ../../rofi/rofi.nix
        ../picom/picom.nix
        ../dunst/dunst.nix
        ../polybar/polybar.nix
    ];

    environment.systemPackages = with pkgs; [
    # home.packages = with pkgs; [
        bspwm
        bsp-layout
        sxhkd
        feh
        lxde.lxsession
        picom
    ];

    # maybe, just maybe you can use builtins.readFile so everything is in home manager, if it doesnt work its not the end of this world anymore, i dont care
    services.xserver.windowManager.bspwm = {
        enable = true;
        # configFile = "/home/slowpuke/does-nix/slowpuke/window-manager/bspwm/bspwmrc";
        configFile = "./bspwmrc";
        sxhkd.configFile = "/home/slowpuke/does-nix/slowpuke/window-manager/bspwm/sxhkdrc";
        dpi = 125;
    };

    services.picom.enable = true;
}
