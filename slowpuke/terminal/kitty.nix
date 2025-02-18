{ pkgs, ... }:

{
    home.packages = with pkgs; [
        kitty
        kitty-themes
        bottom
        fzf
        neofetch
        ripgrep
        # tmux
    ];

    programs.kitty = {
        enable = true;
        # Floraverse
        # id like to change it to a grey/green one for when the window manager will be online so it has the same vibe
        # for now Harper will do, but I think id like to find something better, maybe something even with red accents to match the nvim colorscheme
        themeFile = "Harper";
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
        };
    };
}
