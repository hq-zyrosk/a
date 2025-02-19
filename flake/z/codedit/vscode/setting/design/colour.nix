let
  variant = import ./colour/variant.nix;
  unknown = import ./colour/unknown.nix;
  shadow = import ./colour/shadow.nix;
  rgb = import ./colour/rgb.nix;
  highlight = import ./colour/highlight.nix;
  hidden = import ./colour/hidden.nix;
  foreground = import ./colour/foreground.nix;
  border = import ./colour/border.nix;
  background = import ./colour/background.nix;
in
{
  "workbench.colorCustomizations" =
    variant
    // unknown
    // shadow
    // rgb
    // highlight
    // hidden
    // foreground
    // border
    // background
    // { };
  "editor.tokenColorCustomizations" = { };
  "editor.semanticTokenColorCustomizations" = {
    "enabled" = true;
    "rules" = {
      "variable" = {
        "foreground" = "#00FF00FF";
      };
      "property" = {
        "foreground" = "#00FF00FF";
      };
      "parameter" = {
        "foreground" = "#00FF00FF";
      };
      "method" = {
        "foreground" = "#D9D9FFFF";
      };
      "function" = {
        "foreground" = "#D9D9FFFF";
      };
      "*.declaration" = {
        "fontStyle" = "bold";
      };
    };
  };
}
