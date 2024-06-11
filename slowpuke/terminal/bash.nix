{ config, pkgs, ... }:

{
    home.packages = with pkgs; [
        bash
        shellharden
        bash-completion
    ];

    programs.bash = {
        enable = true;
    };
}
