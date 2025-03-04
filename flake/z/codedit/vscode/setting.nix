let
  system = import ./setting/system.nix;
  source = import ./setting/source.nix;
  design = import ./setting/design.nix;
in
source // design // system // { }
