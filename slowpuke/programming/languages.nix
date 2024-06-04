{ pkgs, ... }:

{
    imports = [
        ./lua-packages.nix
    ];

    home.packages = with pkgs; [
        # C
        # gcc
        gccMultiStdenv
        cmake
        clang_18
        clang-tools_18
        clangStdenv
        
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

        # misc
        rustup
        sbcl
        python3
    ];
}
