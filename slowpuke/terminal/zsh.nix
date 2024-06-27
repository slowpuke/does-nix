{ config, lib, ... }:

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
            ssd-update = "${config.home.homeDirectory}/does-nix/scripts/ssd-backup-notification/ssd-backup-notif update";
            lisp = "sbcl --script $1";
            cdnix = "cd ${config.home.homeDirectory}/does-nix";
            cdnvim = "cd ${config.home.homeDirectory}/.config/nvim";
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
