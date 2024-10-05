# https://github.com/rupurt/gnu-cobol-nix

{
  description = "Your nix flake with GnuCOBOL. Hack the planet!";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    gnu-cobol= {
      url = "github:rupurt/gnu-cobol-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    flake-utils,
    gnu-cobol,
    nixpkgs,
    ...
  }: let
    systems = ["x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin"];
    outputs = flake-utils.lib.eachSystem systems (system: let
      pkgs = import nixpkgs {
        overlays = [
          gnu-cobol.overlay
        ];
      };
    in {
      # nix fmt
      formatter = pkgs.alejandra;

      # nix develop -c $SHELL
      devShells.default = pkgs.mkShell {
        name = "default dev shell";

        packages = with pkgs; [
          gnu-cobol-pkgs.gnu-cobol.bin
        ];
      };
    });
  in
    outputs;
}
