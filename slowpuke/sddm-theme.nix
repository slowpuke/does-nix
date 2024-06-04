{ pkgs }:


let 
    imgLink = "https://raw.githubusercontent.com/slowpuke/does-nix/main/assets/sddm-background.png";
    image = pkgs.fetchurl {
        url = imgLink;
        sha256 = "1v22mby051p59x88c2gq7jzgx8hw501m4id2daxlqd7ipk038iw4";
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

