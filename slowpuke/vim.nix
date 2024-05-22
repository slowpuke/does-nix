{ conig, pkgs, ... }:

{
    home.packages = with pkgs; [
        nvim
        vim
        kate
    ]

    programs.nvim = {
        enable = true;
        # there was a way to do it like this with the lua setup, check kate notes
    }
}
