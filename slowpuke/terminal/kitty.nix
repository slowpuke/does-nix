{ pkgs, ... }:

{
    home.packages = with pkgs; [
        kitty
        kitty-themes
        bottom
        fzf
        neofetch
        ripgrep
    ];

    programs.kitty = {
        enable = true;
        # Floraverse
        # id like to change it to a grey/green one for when the window manager will be online so it has the same vibe
        # for now Harper will do, but I think id like to find something better, maybe something even with red accents to match the nvim colorscheme
        # Mathias, NightLion_v1, Tango_Dark*, 
        themeFile = "Tango_Dark";
        settings = {
            cursor_shape = "beam";
            cursor_beam_thickness = 3;
            cursor_blink_interval = 0;

            enable_audio_bell = false;

            tab_bar_edge = "bottom";
            tab_bar_style = "powerline";

            shell_integration = "enabled no-cursor";
            confirm_os_window_close = 0;

            copy_on_select = false;

            enabled_layouts = "tall:bias=56;full_size=1;mirrored=false";
        };
        keybindings = {
            "ctrl+[" = "copy_to_clipboard";
            "ctrl+]" = "paste_from_clipboard";

            "ctrl+up" = "scroll_line_up";
            "ctrl+page_up" = "scroll_page_up";
            "ctrl+down" = "scroll_line_down";
            "ctrl+page_down" = "scroll_page_down";
            "ctrl+end" = "scroll_end";

            "ctrl+shift+right" = "next_tab";
            "ctrl+shift+left" = "previous_tab";
            "ctrl+shift+up" = "new_tab";
            "ctrl+shift+down" = "close_tab";

            "ctrl+shift+enter" = "new_window";
            "ctrl+shift+backspace" = "close_window";
            "ctrl+shift+]" = "next_window";
            "ctrl+shift+[" = "previous_window";
            "ctrl+shift+/" = "swap_with_window";
            "ctrl+shift+h" = "resize_window narrower";
            "ctrl+shift+j" = "resize_window shorter";
            "ctrl+shift+k" = "resize_window taller";
            "ctrl+shift+l" = "resize_window wider";
            "ctrl+shift+home" = "resize_window reset";
        };
    };
}
