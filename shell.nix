{ pkgs ? import <nixpkgs> { } }:
let
  elmProject = pkgs.callPackage ./elm-project-derivation.nix { };
in
pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    elmPackages.elm
    elm2nix
    elmProject
  ];
}
