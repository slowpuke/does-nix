{ pkgs, ... }:

{
    # home.packages = with pkgs; [
    #     polybar
    # ];
    
    services.polybar = {
        enable = true;
        package = pkgs.polybar;
        config = ./polybar.ini;
        script = "polybar real &amp;";
    };
}
