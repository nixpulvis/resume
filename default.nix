{ pkgs ? import <nixpkgs> {} }:
pkgs.stdenv.mkDerivation {
  name = "resume";
  src = ./.;
  nativeBuildInputs = with pkgs; [ gnumake texlive.combined.scheme-full ];
  installPhase = "install -D professional.pdf $out/resume.pdf";
}
