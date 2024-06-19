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
            cdnix = "cd /home/${username}/does-nix";
            cdnvim = "cd /home/${username}/.config/nvim";
            # this actually works
            # c-library = "xdg-open https://nixos.wiki/wiki/FAQ/I_installed_a_library_but_my_compiler_is_not_finding_it._Why%3F";
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

