{ pkgs, ... }:

# if this doesnt work try to make a separate file and start it like bspwm and sxhkd
{
    services.picom = {
        enable = true;
        package = pkgs.picom-pijulius;
        # https://github.com/hayiam/misc/blob/main/.config/picom/picom.conf -- this is what i needed (i think)
        # also try to see if you can pull up the man page for the fork
        # https://www.youtube.com/watch?v=ZE1_20qd15k
        settings = {
            animations = true;
            animation-for-open-window = "slide-up"; 
            animation-for-transient-window = "slide-down";
            animation-for-unmap-window = "slide-up";
            animation-for-workspace-switch = "zoom";
            animation-for-workspace-switch-out = "zoom";
            animation-stiffness = 300.0;
            animation-window_mass = 1.0;
            animation-dampening = 26;
            animation-delta = 10;
            animation-force_steps = false;
            animation-clamping = true;

            fading = true;
            fade-in-step = 0.07;
            fade-out-step = 0.07;
        };     
        backend = "glx";
        vSync = true;
    };
}
