{ pkgs, ... }:

{
    services.picom = {
        enable = true;
        package = pkgs.picom-pijulius;
        settings = {
            # animations = true;
            # animation-for-open-window = "slide-up"; 
            # animation-for-transient-window = "slide-down";
            # animation-for-unmap-window = "slide-up";
            # animation-for-workspace-switch = "zoom";
            # animation-for-workspace-switch-out = "zoom";
            # animation-stiffness = 300.0;
            # animation-window_mass = 1.0;
            # animation-dampening = 26;
            # animation-delta = 10;
            # animation-force_steps = false;
            # animation-clamping = true;

            fading = true;
            fade-in-step = 0.07;
            fade-out-stp = 0.07;
        };     
        backend = "glx";
        vSync = true;
    };
}
