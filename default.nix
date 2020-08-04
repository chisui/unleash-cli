{ pkgs ? import <nixpkgs> {} 
, lib ? pkgs.lib
, mkDerivation ? pkgs.stdenv.mkDerivation
}:
mkDerivation {
  name    = "unleash-cli";
  version = "1.0.0";
  src = if lib.inNixShell then null else ./.;
  buildPhase = ''
    echo "TODO: implement buildphase"
    exit 1
  '';
  shellHook = ''
    PATH=$PWD/node_modules/.bin/:$PATH
  '';
  buildInputs = with pkgs; [
    nodejs-12_x 
  ];
}
