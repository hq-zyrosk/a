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
          "foreground" = "#D3D3D3FF";
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
        foreground = "#CFCFFFFF";
        fontStyle = "italic";
      };
      generic = {
        foreground = "#CFCFFFFF";
        fontStyle = "italic";
      };
      builtinType = {
        foreground = "#CFCFFFFF";
        fontStyle = "italic";
      };
      typeParameter = {
        foreground = "#CFCFFFFF";
        fontStyle = "italic";
      };
      derive = {
        foreground = "#00F500FF";
      };
      interface = {
        foreground = "#CFCFFFFF";
      };
      typeAlias = {
        foreground = "#CFCFFFFF";
      };
      enumMember = {
        foreground = "#FFBEFFFF";
      };
      enum = {
        foreground = "#DBDB00FF";
      };
      struct = {
        foreground = "#00EBEBFF";
      };
      parameter = {
        foreground = "#FFD8D8FF";
        underline = true;
      };
      property = {
        foreground = "#FFD8D8FF";
      };
      variable = {
        foreground = "#FFC5C5FF";
      };
      formatSpecifier = {
        foreground = "#E8E800FF";
      };
      escapeSequence = {
        foreground = "#DBDB00FF";
      };
      boolean = {
        foreground = "#D3D3D3FF";
      };
      number = {
        foreground = "#D3D3D3FF";
      };
      string = {
        foreground = "#D3D3D3FF";
      };
      attributeBracket = {
        foreground = "#D3D3D3FF";
      };
      namespace = {
        foreground = "#D3D3D3FF";
      };
      operator = {
        foreground = "#D3D3D3FF";
      };
      comment = {
        foreground = "#D3D3D3FF";
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
