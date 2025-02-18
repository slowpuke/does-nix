{ pkgs, ... }:

{
    home.packages = with pkgs; [
        polybar
    ];

    services.polybar = {
        enable = true;
        config = ./polybar.ini;
        script = "polybar real &amp;";
    };
}
