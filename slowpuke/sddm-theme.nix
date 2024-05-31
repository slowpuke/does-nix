{ pkgs }:


let 
    imgLink = "https://github.com/slowpuke/does-nix/blob/main/assets/sddm-background.png";

    image = pkgs.fetchurl {
        url = imgLink;
        sha256 = "sha256-PxMi1h2ZjQk7dzlbPEyn4cBKuJjJu8gRLgfVjQPmfBg=";
    };
in 
pkgs.stdenv.mkDerivation  {
  name = "sddm-theme";
  src = pkgs.fetchFromGitHub {
        owner = "MarianArlt";
        repo = "sddm-sugar-light";
        rev = "19bac00e7bd99e0388d289bdde41bf6644b88772";
        sha256 = "1xymi0xnwskgq0ddpm0vbxk4nwc4azdz5hq3nmkpd8p24js5kmr9";
  };
  installPhase = ''
        mkdir -p $out
        cp -R ./* $out/
        cd $out/
        rm Background.jpg
        cp -r ${image} $out/Background.jpg
   '';
}

