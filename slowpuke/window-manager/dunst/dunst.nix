{ pkgs, ... }:

{
    home.packages = with pkgs; [
        dunst
        colloid-icon-theme
    ];

    services.dunst = {
        enable = true;
        settings = {
            global = {
                monitor = 0;
                follow = "keyboard";
                width = 400;
                height = 300;
                origin = "top-right";
                offset = "0x32";
                scale = 0;
                notification_limit = 0;
                progress_bar = false;
                indicate_hidden = true;
                transparency = 0;
                separator_height = 2;
                padding = 8;
                text_icon_padding = 11;
                frame_width = 1;
                frame_color = "#D0B1C6";
                sort = "yes";
                idle_threshold = 300;
                font = "0xProto Nerd Font";
                markup = "full";
                format = "<b>%a</b>\n<i>%s</i>\n%b";
                alignment = "right";
                vertical_alignment = "center";
                show_age_threshold = -1;
                ellipsize = "end";
                stack_duplicates = true;
                hide_duplicate_count = false;
                show_indicators = "yes";
                enable_recursive_icon_lookup = true;
                icon_theme = "Colloid-Yellow-Light";
                icon_position = "right";
                min_icon_size = 20;
                max_icon_size = 50;
                mouse_left_click = "close_current";
                mouse_middle_click = "do_action, close_current";
                mouse_right_click = "close_all";
            };

            urgency_low = {
                background = "#1B1121";
                foreground = "#FFFFFF";
                frame_color = "#D0B1C6";
                timeout = 10;
            };

            urgency_normal = {
                background = "#1B1121";
                foreground = "#FFFFFF";
                frame_color = "#D0B1C6";
                timeout = 10;
            };

            urgency_critical = {
                background = "#1B1121";
                foreground = "#FFFFFF";
                frame_color = "#E8FF47";
                timeout = 0;
            };
        };
    };
}
