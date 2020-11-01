let
  nixpkgs = (import <nixpkgs> {});
  ghc = nixpkgs.haskellPackages.ghcWithPackages (h: with h; [
    # lens
  ]);
in nixpkgs.stdenv.mkDerivation {
    pname = "ghc-shell";
    version = "1.0.0";
    nativeBuildInputs = with nixpkgs; [
      ghc
      haskellPackages.ghcid
    ];
  }
