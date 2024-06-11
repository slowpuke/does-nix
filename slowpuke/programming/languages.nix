{ pkgs, ... }:
    
{
    imports = [
        ./lua-packages.nix
        # ./c-packages.nix
    ];

    # home.packages = with pkgs; [
    environment.systemPackages = with pkgs; [
        # c
        # gcc
        clang_18
        clang-tools_18
        libclang
        # ccls
        cmake
        # glslang
        # vulkan-tools
        # vulkan-validation-layers
        # vulkan-loader
        # vulkan-utility-libraries
        # vulkan-headers
        # vulkan-tools-lunarg
        
        # lua
        lua53Packages.lua
        love

        # game making
        godot_4
        ldtk
    
        # haskell
        ghc
        cabal-install
        cabal2nix
        haskellPackages.lsp
        # haskellPackages.ghcup     # the package is temporarely broken, try later i guess

        # php
        php
        php82Packages.composer

        rustup
        sbcl
        python3
        # nodejs  # for installing bash-lsp, install the nodejs.bash-language-server you moron
        nodePackages.bash-language-server
    ];

    programs.nix-ld = {
        enable = true;
        libraries = with pkgs; [
            clang_18
            clang-tools_18
            libclang
            stdenv.cc.cc
         ];
    };
    environment.variables = { 
        PATH = "${pkgs.clang-tools}/bin:$PATH"; 
        # the vulkan thing is fucked, the nix shell in the demo project actually works but I don't know why
        # i guess try to emulate everything the nix shell does...
        # VULKAN_SDK = "${pkgs.vulkan-headers}";
    };

}
