{ config, ... }:

{
    programs.zsh = {
        enable = true;
        syntaxHighlighting = {
            enable = false;
            styles = {
                "alias" = "fg=yellow";
                "builtin" = "fg=magenta";
                "command" = "fg=magenta";
            };
        };
        shellAliases = {
            pg = "bash ~/here/programming/bash/password-generator";
            ssd-update = "lua ~/here/programming/lua-projects/backup-notification/main.lua update";
            lisp = "sbcl --script $1";
        };
        oh-my-zsh = {
            enable = true;

            theme = "agnoster";
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

