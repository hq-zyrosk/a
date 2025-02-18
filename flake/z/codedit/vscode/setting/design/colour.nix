let
  unknown = import ./colour/unknown.nix;
  shadow = import ./colour/shadow.nix;
  rgb = import ./colour/rgb.nix;
  highlight = import ./colour/highlight.nix;
  hidden = import ./colour/hidden.nix;
  foreground = import ./colour/foreground.nix;
  condition = import ./colour/condition.nix;
  border = import ./colour/border.nix;
  background = import ./colour/background.nix;
in
{
  "workbench.colorCustomizations" =
    unknown
    // shadow
    // rgb
    // highlight
    // hidden
    // foreground
    // condition
    // border
    // background
    // { };
  "editor.tokenColorCustomizations" = { };
  "editor.semanticTokenColorCustomizations" = {
    "enabled" = true;
    "rules" = {
      "variable" = {
        "foreground" = "#004700FF";
      };
      "property" = {
        "foreground" = "#004700FF";
      };
      "parameter" = {
        "foreground" = "#004700FF";
      };
      "method" = {
        "foreground" = "#0000CFFF";
      };
      "function" = {
        "foreground" = "#0000CFFF";
      };
      "*.declaration" = {
        "fontStyle" = "bold";
      };
    };
  };
}
