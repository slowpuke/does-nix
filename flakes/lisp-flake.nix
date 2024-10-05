{
  description = "Common Lisp environment flake";
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
                sbcl
                roswell
            ];
            
            # i dont know if this works, if it does good
            packages = with pkgs.sbclPackages; [
                
            ]
        };
    };
}
