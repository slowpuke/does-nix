{ pkgs, ... }:

{
    home.packages = with pkgs; [
        kitty
        kitty-themes
        bottom
        fzf
        fastfetch
        ripgrep
        zoxide
    ];

    programs.kitty = {
        enable = true;
        # Floraverse
        themeFile = "Tango_Dark";
        font.name = "Lilex Nerd Font";
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

    programs.zoxide = {
        enable = true;
        options = [
            "--cmd cd"
        ];
        enableZshIntegration = true;
        enableFishIntegration = false;
        enableBashIntegration = false;
    };

    programs.fastfetch = {
        enable = true;
        settings = {
            logo = {
                color = {
                    "1" = "magenta";
                    "2" = "white";
                };
            };
            display = {
                color = "magenta";
                separator = "  ";
            };
            modules = [
                {
                    type = "title";
                    format = "{#1}╭───────────── {#}{user-name-colored}";
                }
                {
                    type = "os";
                    key = "{#separator}│  {#keys}󰍹 OS";
                }
                {
                    type = "kernel";
                    key = "{#separator}│  {#keys}󰒋 Kernel";
                }
                {
                    type = "packages";
                    key = "{#separator}│  {#keys}󰏖 Packages";
                    format = "{all}";
                }
                {
                    type = "wm";
                    key = "{#separator}│  {#keys}󱂬 WM";
                }
                {
                    type = "terminal";
                    key = "{#separator}│  {#keys} Terminal";
                }
                {
                    type = "shell";
                    key = "{#separator}│  {#keys}󰞷 Shell";
                }
                {
                    type = "terminalfont";
                    key = "{#separator}│  {#keys}󰛖 Font";
                }
                {
                    type = "cpu";
                    key = "{#separator}│  {#keys} CPU";
                }
                {
                    type = "gpu";
                    key = "{#separator}│  {#keys}󰢮 GPU";
                }
                {
                    type = "vulkan";
                    key = "{#separator}│  {#keys} Vulkan";
                }
                {
                    type = "memory";
                    key = "{#separator}│  {#keys} Memory";
                }
                {
                    type = "disk";
                    key = "{#separator}│  {#keys}󰋊 Disk (/)";
                    folders = "/";
                }
                {
                    type = "custom";
                    format = "{#1}╰───────────────────────────────╯";
                }
                {
                    type = "colors";
                    symbol = "block";
                }
            ];
        };
    };
}
