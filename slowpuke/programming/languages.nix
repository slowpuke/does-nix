{ pkgs, ... }:

# TODO: if the lua packages work with home manager just transfer them into home manager, just like you did with gaming
# just move nix-ld and the env variable into configuration.nix
{
    imports = [
        ./lua-packages.nix
        # ./c-packages.nix
    ];

    environment = { 
        systemPackages = with pkgs; [
            gcc
            clang
            clang-tools
            cmake
            bear
            ninja

            lua53Packages.lua
            love

            ghc
            cabal-install
            cabal2nix
            haskellPackages.lsp
            # haskellPackages.ghcup     # the package is temporarely broken, try later i guess

            rustup
            sbcl
            nodePackages.bash-language-server
        ]; 
        # variables.PATH = "${pkgs.clang-tools}/bin:$PATH";
    };

    programs.nix-ld = {
        enable = true;
        libraries = with pkgs; [
            stdenv.cc.cc
         ];
    };
}
