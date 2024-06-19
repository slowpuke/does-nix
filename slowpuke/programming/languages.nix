{ pkgs, ... }:

{
    imports = [
        ./lua-packages.nix
        # ./c-packages.nix
    ];

    environment = { 
        systemPackages = with pkgs; [
            # c
            gcc
            clang
            clang-tools
            libclang
            cmake

            # lua
            lua53Packages.lua
            love

            # game making
            # TODO: maybe move this from here? maybe into a game making file, or even better into home.nix
            godot_4
            ldtk

            # haskell
            ghc
            cabal-install
            cabal2nix
            haskellPackages.lsp
            # haskellPackages.ghcup     # the package is temporarely broken, try later i guess

            rustup
            sbcl
            python3
            nodePackages.bash-language-server
            nixfmt-classic
        ]; 
        variables.PATH = "${pkgs.clang-tools}/bin:$PATH";
    };

    programs.nix-ld = {
        enable = true;
        libraries = with pkgs; [
            stdenv.cc.cc
         ];
    };

    # TODO: so, maybe try this? add a clangd package that could help or something
    # also maybe this thread can help, read all the comments -- https://old.reddit.com/r/NixOS/comments/1b0zztw/keeping_lua_neovim_config_while_using_nix/
    # programs.neovim.enable = true;
    # also move this from here, into an appropriate file
}
