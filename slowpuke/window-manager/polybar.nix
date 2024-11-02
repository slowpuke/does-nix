{ config, pkgs, ... }:

{
    home.packages = with pkgs; [
        polybar
    ];

    services.polybar = {
        enable = true;
        script = "polybar bar &amp;";
        config = {
            "colors" = {
                # ill need to add more colors and name the variables properly
                purple = "#451240";
                yellow = "#e8ff47";
            };

            "bar/top" = {
                width = "100%";
                height = "3%"; 
                
                background = "\${colors.purple}";
                foreground = "\${colors.yellow}";

                border-size = "4pt";
                border-color = "##8c709e";

                separators = "//";

                modules-left = "xworkspaces";
                modules-center = "";
                modules-right = "systray date";
            };

            "module/date" = {
                type = "internal/date";
                internal = 5;
                date = "%d.%m.%y";
                time = "%H:%M";
                label = "%time%  %date%";
            };

            "module/systray" = {
                type = "internal/tray";
                format-margin = "8pt";
                tray-spacing = "16pt";
            };
            
            "module/xworkspaces" = {
                type = "internal/xworkspaces";

                label-active = "%name%";
                # label-active-background = ${colors.background-alt}
                # label-active-underline= ${colors.primary}
                label-active-padding = 1;

                # label-occupied = "%name%";
                # label-occupied-padding = 1;
            };
        };
    };
}
