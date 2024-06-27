{ config, pkgs, ... }:

{
    programs.neovim = {
        enable = true;
        defaultEditor = true;

        withNodeJs = true;
        withPython3 = true;

        viAlias = true;
        vimAlias = true;
    };
}
