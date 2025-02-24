{ pkgs, ... }:

# TODO: 125% fractional scaling, see how you can do that

# TODO: basic apps like screenshotting will have to be installed manually, this is because i want to get rid of kde altogether
# make a list of all of them and install them in home.nix

{
    home.packages = with pkgs; [
        bspwm
        bsp-layout
        sxhkd
        feh
        dunst
        lxde.lxsession
        picom
    ];

    xsession.windowManager.bspwm = {
        enable = true;
        # rules = {
        #
        # };
        # these should work, but are the example options of bspwm, customize when everything works
        # settings = { 
        #     border_width = 4; 
        #     window_gap = 12;
        #     split_ratio = 0.52;
        #     borderless_monocle = true;
        # };
        # maybe the feh command for wallpaper too
        # startupPrograms = [ 
        #     # "pgrep -x sxhkd > /dev/null || sxhkd" 
        #     "pkill picom"
        #     "xsetroot -cursor_name left_ptr" 
        #     # "dunst -config $HOME/.config/dunst/dunstrc"     # theres no dunstrc, but you can enable and customize it through home manager, dont
        #                                                     # know if this line will still be in here, i guess yes cause polybar is here too
        #     "feh --bg-fill $HOME/does-nix/assets/wallpaper.jpg"
        #     # "polybar"
        #     "sleep 2; polybar -q bar" 
        # ];
        # monitors = {
        #
        # };
    };

    services.sxhkd = {
        enable = true;
        # keybindings = {
        #     "super + Return" = "kitty";
        #     "super + space" = "rofi -show drun";
        #     "super + escape" = "rofi -show power-menu";                                                     #!
        #     "super + shift + escape" = "bspc wm -r";                                                        # restarts bspwm
        #     "super + q" = "bspc node -c";                                                                   #! kills window
        #     "super + {h,j,k,l}" = "bspc node -f {west,south,north,east}";                                   # move window
        #     "super + d + {0-9}" = "bspc node -d {0-9}";                                                     # send window to desktop
        #     "super + m + {0-9}" = "bspc node -d {0-9} && bspc desktop -f {0-9}";                            # send window and move to desktop
        #     "super + button3" = "bspc node focused.tiled -t floating || bspc node focused.tiled -t tiled";  # im not sure if button3 will work for middle mouse button
        #     "super + shift + {h,j,k,l}" = "bspc node -s {west,south,north,east}";                           # swap windows
        #     "super + {0-9}" = "bspc desktop -f {0-9}";                                                      # switch to desktop
        #     "ctrl + alt + {h,j,k,l}" = "bspc node -z {left -20 0, bottom 0 20, top 0 -20, right 20 0}";     # resize window outward
        #     "ctrl + super + {h,j,k,l}" = "bspc node -z {right -20 0, top 0 20, bottom 0 -20, left 20 0}";   # resize window inward
        # };
    };

    services.picom.enable = true;
}
