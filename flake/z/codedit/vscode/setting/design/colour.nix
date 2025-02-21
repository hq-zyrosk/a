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
  "editor.tokenColorCustomizations" = {
    "textMateRules" = [
      {
        "scope" = [
          "punctuation"
        ];
        "settings" = {
          "foreground" = "#898989FF";
        };
      }
      {
        "scope" = [
          "source"
        ];
        "settings" = {
          "foreground" = "#898989FF";
          "fontStyle" = "italic";
        };
      }
    ];
  };
  "editor.semanticTokenColorCustomizations" = {
    "enabled" = true;
    "rules" = {
      builtinAttribute = {
        foreground = "#BCBCBCFF";
        fontStyle = "italic";
      };
      decorator = {
        foreground = "#BCBCBCFF";
        fontStyle = "italic";
      };
      macro = {
        foreground = "#BCBCBCFF";
        fontStyle = "italic";
      };
      function = {
        foreground = "#BCBCBCFF";
      };
      "*.callable" = {
        foreground = "#BCBCBCFF";
      };
      enumMember = {
        foreground = "#FF96FFFF";
        fontStyle = "italic";
      };
      enum = {
        foreground = "#FF96FFFF";
      };
      struct = {
        foreground = "#00D1D1FF";
      };
      boolean = {
        foreground = "#C2C200FF";
        fontStyle = "bold";
      };
      number = {
        foreground = "#C2C200FF";
      };
      string = {
        foreground = "#C2C200FF";
      };
      escapeSequence = {
        foreground = "#C2C200FF";
        fontStyle = "italic";
      };
      formatSpecifier = {
        foreground = "#C2C200FF";
        fontStyle = "italic";
      };
      property = {
        foreground = "#00DA00FF";
      };
      method = {
        foreground = "#00DA00FF";
        fontStyle = "italic";
      };
      unresolvedReference = {
        foreground = "#00DA00FF";
        fontStyle = "italic";
      };
      lifetime = {
        foreground = "#B5B5FFFF";
        fontStyle = "italic";
      };
      generic = {
        foreground = "#B5B5FFFF";
        fontStyle = "italic";
      };
      builtinType = {
        foreground = "#B5B5FFFF";
        fontStyle = "italic";
      };
      typeParameter = {
        foreground = "#B5B5FFFF";
        fontStyle = "italic";
      };
      derive = {
        foreground = "#B5B5FFFF";
      };
      interface = {
        foreground = "#B5B5FFFF";
      };
      typeAlias = {
        foreground = "#B5B5FFFF";
      };
      parameter = {
        foreground = "#FFA3A3FF";
        fontStyle = "italic";
      };
      variable = {
        foreground = "#FFA3A3FF";
      };
      attributeBracket = {
        foreground = "#898989FF";
      };
      namespace = {
        foreground = "#898989FF";
      };
      operator = {
        foreground = "#898989FF";
      };
      selfTypeKeyword = {
        foreground = "#000000FF";
        fontStyle = "strikethrough";
      };
      selfKeyword = {
        foreground = "#000000FF";
        fontStyle = "strikethrough";
      };
      keyword = {
        foreground = "#000000FF";
        fontStyle = "strikethrough";
      };
      comment = {
        foreground = "#000000FF";
        fontStyle = "italic";
      };
      "*.declaration" = {
        fontStyle = "bold";
      };
      "*" = {
        fontStyle = "";
      };
    };
  };
}
