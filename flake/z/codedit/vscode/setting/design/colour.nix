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
      #bracket
      {
        "scope" = [
          #language nix bracket 3
          "punctuation.definition.attrset"
          "punctuation.section.bracket"
          #language css bracket 3
          "punctuation.section.property-list"
          #language css bracket 3
          "punctuation.section.property-list.begin.bracket.curly"
          "punctuation.section.property-list.end.bracket.curly"
          #language nix bracket 2
          "punctuation.definition.attrset-or-function"
          "punctuation.definition.list"
          #language css bracket 0
          "punctuation.section.function.begin"
          "punctuation.section.function.end"
          #bracket 3
          "punctuation.definition.block"
          #bracket 2
          "punctuation.definition.array"
          "meta.brace.square"
          #bracket 1
          "punctuation.definition.tag"
          #bracket 0
          "meta.brace.round"
        ];
        "settings" = {
          "foreground" = "#898989FF";
          "fontStyle" = "";
        };
      }
    ];
  };
  "editor.semanticTokenColorCustomizations" = {
    "enabled" = true;
    "rules" = {
      number = {
        foreground = "#FFFFFFFF";
      };
      string = {
        foreground = "#FFFFFFFF";
      };
      formatSpecifier = {
        foreground = "#FFFFFFFF";
      };
      operator = {
        foreground = "#FFFFFFFF";
      };
      function = {
        foreground = "#B5B5FFFF";
      };
      method = {
        foreground = "#B5B5FFFF";
      };
      parameter = {
        foreground = "#00DA00FF";
      };
      property = {
        foreground = "#00DA00FF";
      };
      variable = {
        foreground = "#00DA00FF";
      };
      typeAlias = {
        foreground = "#3F3F3FFF";
      };
      typeParameter = {
        foreground = "#3F3F3FFF";
      };
      selfTypeKeyword = {
        foreground = "#3F3F3FFF";
      };
      builtinType = {
        foreground = "#3F3F3FFF";
      };
      unresolvedReference = {
        foreground = "#FFFF00FF";
      };
      escapeSequence = {
        foreground = "#FFFF00FF";
      };
      keyword = {
        foreground = "#FFFFFFFF";
      };
      selfKeyword = {
        foreground = "#FFFFFFFF";
      };
      interface = {
        foreground = "#FFFFFFFF";
      };
      lifetime = {
        foreground = "#FFFFFFFF";
      };
      struct = {
        foreground = "#FFFFFFFF";
      };
      namespace = {
        foreground = "#FFFFFFFF";
      };
      enum = {
        foreground = "#FFFFFFFF";
      };
      enumMember = {
        foreground = "#FFFFFFFF";
      };
      attributeBracket = {
        foreground = "#FFFFFFFF";
      };
      decorator = {
        foreground = "#FFFFFFFF";
      };
      derive = {
        foreground = "#FFFFFFFF";
      };
      builtinAttribute = {
        foreground = "#FFFFFFFF";
      };
      generic = {
        foreground = "#FFFFFFFF";
      };
      macro = {
        foreground = "#FFFFFFFF";
      };
      comment = {
        foreground = "#FFFFFFFF";
      };
      attribute = {
        foreground = "#FF0000FF";
      };
      deriveHelper = {
        foreground = "#FF0000FF";
      };
      type = {
        foreground = "#FF0000FF";
      };
      macroBang = {
        foreground = "#FF0000FF";
      };
      "*.declaration" = {
        fontStyle = "bold";
      };
      "*" = {
        foreground = "#FF0000FF";
      };
    };
  };
}
