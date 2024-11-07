{
    description = "A flake for Guile Scheme";
    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    };

    outputs = { self, nixpkgs }:
        let
        pkgs = nixpkgs.legacyPackages."x86_64-linux";
    in
    {
        devShells."x86_64-linux".default = pkgs.mkShell {
            buildInputs = with pkgs; [
                guile
                guix
            ];

            packages = with pkgs.guix; [

            ];

            shellHook = ''

            '';
        };
    };
}
