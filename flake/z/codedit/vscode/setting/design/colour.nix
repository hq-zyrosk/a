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
          "keyword"
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
          "foreground" = "#808080FF";
        };
      }
    ];
  };
  "editor.semanticTokenColorCustomizations" = {
    "enabled" = true;
    "rules" = {
      builtinAttribute = {
        foreground = "#BCBCBCFF";
      };
      decorator = {
        foreground = "#BCBCBCFF";
      };
      macro = {
        foreground = "#BCBCBCFF";
      };
      unresolvedReference = {
        foreground = "#E1E1E1FF";
      };
      method = {
        foreground = "#E1E1E1FF";
      };
      function = {
        foreground = "#BCBCBCFF";
      };
      "*.callable" = {
        foreground = "#BCBCBCFF";
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
        foreground = "#00DA00FF";
      };
      interface = {
        foreground = "#B5B5FFFF";
      };
      typeAlias = {
        foreground = "#B5B5FFFF";
      };
      enumMember = {
        foreground = "#FF96FFFF";
      };
      enum = {
        foreground = "#C2C200FF";
      };
      struct = {
        foreground = "#00D1D1FF";
      };
      parameter = {
        foreground = "#FFD8D8FF";
        underline = true;
      };
      property = {
        foreground = "#FFD8D8FF";
      };
      variable = {
        foreground = "#FFA3A3FF";
      };
      formatSpecifier = {
        foreground = "#E8E800FF";
      };
      escapeSequence = {
        foreground = "#C2C200FF";
      };
      boolean = {
        foreground = "#898989FF";
      };
      number = {
        foreground = "#898989FF";
      };
      string = {
        foreground = "#898989FF";
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
      comment = {
        foreground = "#898989FF";
      };
      selfTypeKeyword = {
        foreground = "#00000000";
        strikethrough = true;
      };
      selfKeyword = {
        foreground = "#00000000";
        strikethrough = true;
      };
      keyword = {
        foreground = "#00000000";
        strikethrough = true;
      };
      "*.declaration" = {
        bold = true;
      };
    };
  };
}
