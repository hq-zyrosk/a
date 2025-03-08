let
  system = import ./setting/system.nix;
  source = import ./setting/source.nix;
  design = import ./setting/design.nix;
in
system // source // design
