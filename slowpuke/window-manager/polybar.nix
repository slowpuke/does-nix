{ config, pkgs, ... }:

{
    home.packages = with pkgs; [
        polybar
    ];

    services.polybar = {
        enable = true;
        config = {
            "bar/top" = {
                width = "100%";
                height = "3%"; 
                modules-center = "date";
                modules-right = "test";
            };

            "module/test-text" = {
                type = "custom/text";
                label = "test";
            };
        };
    };
}
