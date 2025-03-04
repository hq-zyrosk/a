let
  yaml = import ./source/yaml.nix;
  typescript = import ./source/typescript.nix;
  toml = import ./source/toml.nix;
  rust = import ./source/rust.nix;
  nix = import ./source/nix.nix;
  just = import ./source/just.nix;
  javascript = import ./source/javascript.nix;
  html = import ./source/html.nix;
  css = import ./source/css.nix;
  comment = import ./source/comment.nix;
in
yaml // typescript // toml // rust // nix // just // javascript // html // css // comment
