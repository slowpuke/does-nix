{ config, pkgs, ... }:

{
    imports = [
        ./lua-packages.nix
    ];

    home.packages = with pkgs; [ (hiPrio gcc)
        gcc
        clang
        clang-tools
        cmake
        conan

        ghc
        cabal-install
        cabal2nix
        haskellPackages.lsp
        # haskellPackages.ghcup     # the package is temporarely broken, try later i guess

        sbcl
        roswell

        rustup
        # wgpu-utils
        jdk
        nodePackages.bash-language-server
    ];
}

