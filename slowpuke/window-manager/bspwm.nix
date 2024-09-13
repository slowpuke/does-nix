{ config, pkgs, ... }:

# TODO: 125% fractional scaling, see how you can do that

# TODO: big problem, vivaldi forgets everything when switching to bspwm, maybe disabling plasma could help
# but i wouldnt count on it too much. This might be another thread on reddit, however i think this time it can
# be solved with the help of the bspwm community, so look for generic terms like "vivaldi doesnt save passowrds with bspwm"

# TODO: basic apps like screenshotting will have to be installed manually, this is because i want to get rid of kde altogether
# make a list of all of them and install them in home.nix

# TODO: check if changing anything here will change the environment when in bspwm, this would make things quite easier cause i wouldnt
# have to restart my pc each time
{
    home.packages = with pkgs; [
        bspwm
        sxhkd
        # nitrogen
        feh
        # picom
        dunst
        lxde.lxsession
    ];

    xsession.windowManager.bspwm = {
        enable = true;
        rules = {

        };
        # these should work, but are the example options of bspwm, customize when everything works
        settings = { 
            border_width = 10; 
            window_gap = 12;
            split_ratio = 0.52;
            borderless_monocle = true;
        };
        # maybe the feh command for wallpaper too
        startupPrograms = [ 
            # "picom" 
            "pgrep -x sxhkd > /dev/null || sxhkd" 
            "pkill kdewallet5"  # maybe this will resolve the password issue, alternative killall kdewallet5 if the first one doesnt work
            "xsetroot -cursor_name left_ptr" 
            "dunst -config $HOME/.config/dunst/dunstrc" 
            "feh -w $HOME/does-nix/assets/wallapaper.jpg"
            "sleep 2; polybar -q bar" 
        ];
        monitors = {

        };
    };

    services.sxhkd = {
        enable = true;
        keybindings = {
            "super + Return" = "kitty";
            "super + space" = "rofi -show drun";
            "super + escape" = "rofi -show power-menu";
            "super + shift + escape" = "bspc wm -r";                                                        # restarts bspwm
            "super + q" = "bpsc node -c";                                                                   # kills window
            "super + {h,j,k,l}" = "bspc node -f {west,south,north,east}";
            "super + w + {0-9}" = "bspc node -d {0-9}";                                                     # send window to desktop
            "super + m + {0-9}" = "bspc node -d {0-9} && bspc desktop -f {0-9}";                            # send window and move to desktop
            "super + button3" = "bspc node focused.tiled -t floating || bspc node focused.tiled -t tiled";  # im not sure if button3 will work for middle mouse button
            "super + shift + {h,j,k,l}" = "bspc node -s {west,south,north,east}";                           # swap windows
            "super + {0-9}" = "bspc desktop -f {0-9}";                                                      # switch to desktop
            "ctrl + alt + {h,j,k,l}" = "bspc node -z {left -20 0, bottom 0 20, top 0 -20, right 20 0}";     # resize window outward
            "ctrl + super + {h,j,k,l}" = "bspc node -z {right -20 0, top 0 20, bottom 0 -20, left 20 0}";   # resize window inward
            # watch the second brodie video, after that look at the scripts, something like volume control could be useful
        };
    };
}
