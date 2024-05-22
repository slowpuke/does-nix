{ config, pkgs, ... }:

{
    home.packages = with pkgs; [
        kitty
    ];

    programs.kitty = {
        enable = true;
        settings = {
            cursor_shape = "beam";
            cursor_beam_thickness = 3;
            cursor_blink_interval = 0;

            enable_audio_bell = false;

            tab_bar_edge = "bottom";
            tab_bar_style = "powerline";

            shell_integration = "enabled no-cursor";
            confirm_os_window_close = 0;
        };
        keybindings = {
            "ctrl+shift+c" = "copy_to_clipboard";
            "ctrl+shift+v" = "copy_from_clipboard";

            "ctrl+shift+right" = "next_tab";
            "ctrl+shift+left" = "previous_tab";
            "ctrl+shift+up" = "new_tab";
            "ctrl+shift+down" = "close_tab";
        };
    };
}
