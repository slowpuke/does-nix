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
        picom
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
            "picom" 
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
        };
    };
}
