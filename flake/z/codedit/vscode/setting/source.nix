let
  yaml = import ./source/yaml.nix;
  xml = import ./source/xml.nix;
  typescript = import ./source/typescript.nix;
  toml = import ./source/toml.nix;
  rust = import ./source/rust.nix;
  plaintext_comment = import ./source/plaintext/comment.nix;
  plaintext = import ./source/plaintext.nix;
  php = import ./source/php.nix;
  nix = import ./source/nix.nix;
  md = import ./source/md.nix;
  justfile = import ./source/justfile.nix;
  json = import ./source/json.nix;
  javascript = import ./source/javascript.nix;
  ipynb = import ./source/ipynb.nix;
  html = import ./source/html.nix;
  css_scss = import ./source/css/scss.nix;
  css_less = import ./source/css/less.nix;
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
  // md
  // justfile
  // json
  // javascript
  // ipynb
  // html
  // css_scss
  // css_less
  // css
