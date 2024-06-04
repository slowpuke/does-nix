{ config, pkgs, ... }:

{
    home.packages = with pkgs; [
        bash
    ];

    programs.bash = {
        enable = true;
    };
}
