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
            ssd-update = "${config.home.homeDirectory}/does-nix/scripts/ssd-backup-notification/ssd-backup-notif update";
            lisp = "sbcl --script $1";
            cdnix = "cd ${config.home.homeDirectory}/does-nix";
            cdnvim = "cd ${config.home.homeDirectory}/.config/nvim";

            # aliases to create a nix shell file in current directory
            blankshell = "cp ${config.home.homeDirectory}/does-nix/flakes/blank-flake.nix ./flake.nix";
            luashell = "cp ${config.home.homeDirectory}/does-nix/flakes/lua-flake.nix ./flake.nix";
            cobolshell = "cp ${config.home.homeDirectory}/does-nix/flakes/cobol-flake.nix ./flake.nix";
            cshell = "cp ${config.home.homeDirectory}/does-nix/flakes/c-flake.nix ./flake.nix";
            rustshell = "cp ${config.home.homeDirectory}/does-nix/flakes/rust-flake.nix ./flake.nix";
            lispshell = "cp ${config.home.homeDirectory}/does-nix/flakes/lisp-flake.nix ./flake.nix";
        };
        envExtra = "
            export LD_LIBRARY_PATH=$NIX_LD_LIBRARY_PATH
        ";
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
