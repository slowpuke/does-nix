{ pkgs, ... }:

{
    imports = [
        # ./lua-packages.nix
        # ./lisp-packages.nix
    ];

    home.packages = with pkgs; [ # (hiPrio gcc)
        gcc
        # clang
        # clang-tools
        # cmake
        # conan

        # ghc
        # cabal-install
        # cabal2nix
        # haskellPackages.lsp
        # haskellPackages.ghcup     # the package is temporarely broken, try later i guess

        # sbcl
        # roswell

        # gnu-cobol

        # rustc
        nixd
        cargo
        nil
        nodePackages.bash-language-server
        # racket
        lua-language-server
    ];
}

