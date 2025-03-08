let
  yaml = import ./source/yaml.nix;
  xml = import ./source/xml.nix;
  typescript = import ./source/typescript.nix;
  toml = import ./source/toml.nix;
  rust = import ./source/rust.nix;
  plaintext_comment = import ./source/comment.nix;
  plaintext = import ./source/plaintext.nix;
  php = import ./source/php.nix;
  nix = import ./source/nix.nix;
  just = import ./source/just.nix;
  json = import ./source/json.nix;
  javascript = import ./source/javascript.nix;
  html = import ./source/html.nix;
  css = import ./source/css.nix;
in
yaml
// xml
// typescript
// toml
// rust
// plaintext_comment
// plaintext
// php
// nix
// just
// json
// javascript
// html
// css
