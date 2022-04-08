{ pkgs ? import /home/stefan/repos/nixos-configs/x1carbon/nixpkgs.nix {} }:

with pkgs;

mkShell {
  buildInputs = [
    cabal-install
    haskell.compiler.ghc8107
    haskell.packages.ghc8107.haskell-language-server
    zlib.dev
  ];
}
