{ config, ... }:

let
    username = "slowpuke";
in
{
    programs.zsh = {
        enable = true;
        syntaxHighlighting = {
            enable = true;
            styles = {
                "alias" = "fg=magenta";
                "builtin" = "fg=magenta";
                "command" = "fg=magenta";
            };
        };
        shellAliases = {
            pg = "bash ~/here/programming/bash/password-generator";
            ssd-update = "lua ~/here/programming/lua-projects/backup-notification/main.lua update";
            lisp = "sbcl --script $1";
            neofetch = "fastfetch";
            cd-nix = "cd /home/${username}/does-nix";
            cd-nvim = "cd /home/${username}/.config/nvim";
        };
        oh-my-zsh = {
            enable = true;
            theme = "half-life";
            plugins = [
                "git"
                "sudo"
                "dirhistory"
            ];
            extraConfig = ''
                ENABLE_CORRECTION="true"
                COMPLETION_WAITING_DOTS="true"
            '';
        };
    };
}

