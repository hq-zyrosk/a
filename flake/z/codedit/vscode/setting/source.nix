let
  yaml = import ./source/yaml.nix;
  typescript = import ./source/typescript.nix;
  rust = import ./source/rust.nix;
  nix = import ./source/nix.nix;
  just = import ./source/just.nix;
  javascript = import ./source/javascript.nix;
  html = import ./source/html.nix;
  css = import ./source/css.nix;
  comment = import ./source/comment.nix;
in
yaml
// typescript
// rust
// nix
// just
// javascript
// html
// css
// comment
// {
  "sortLines.sortEntireFile" = true;
  "sortLines.ignoreUnselectedLastLine" = false;
  "sortLines.filterBlankLines" = true;
  "scm.diffDecorations" = "all";
  "scm.autoReveal" = true;
  "git.verboseCommit" = true;
  "git.showProgress" = true;
  "git.openRepositoryInParentFolders" = "always";
  "git.enabled" = true;
  "git.enableStatusBarSync" = true;
  "git.enableSmartCommit" = true;
  "git.defaultBranchName" = "x";
  "git.decorations.enabled" = false;
  "git.confirmSync" = false;
  "git.autorefresh" = true;
  "git.autofetch" = true;
}
