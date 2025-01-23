let
  source = import ./setting/source.nix;
  design = import ./setting/design.nix;
in
source // design // { }
