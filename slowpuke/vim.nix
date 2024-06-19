{ config, pkgs, ... }:

{
    home.packages = with pkgs; [
        # neovim
        vim
        kate
    ];

    # lets see if this works...
    # if this works then i think i can make the languages home again

    # at this point im thinking about making a nvim.nix file and doing a hybrid liking to the single files
    # while managing the plugins with nix
    programs.neovim = {
        enable = true;

        withNodeJs = true;
        withPython3 = true;
        withRuby = true;

        extraPackages = with pkgs; [
            libclang
        ];
    };

    xdg.configFile = {
        "nvim" = {
            source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nvim/";
        };
    };
}
