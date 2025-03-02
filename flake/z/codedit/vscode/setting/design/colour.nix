let
  variant = import ./colour/variant.nix;
  unknown = import ./colour/unknown.nix;
  shadow = import ./colour/shadow.nix;
  rgb = import ./colour/rgb.nix;
  redundant = import ./colour/redundant.nix;
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
    // redundant
    // highlight
    // hidden
    // foreground
    // border
    // background
    // { };
  "editor.tokenColorCustomizations" = {
    "textMateRules" = [
      {
        "scope" = [ ];
        "settings" = {
          "foreground" = "#5A5A5AFF";
        };
      }
      {
        "scope" = [
          "punctuation"
          "keyword"
        ];
        "settings" = {
          "foreground" = "#5A5A5AFF";
        };
      }
    ];
  };
  "editor.semanticTokenColorCustomizations" = {
    "enabled" = true;
    "rules" = {
      #
      "formatSpecifier" = {
        "foreground" = "#D3D3D3FF";
      };
      "escapeSequence" = {
        "foreground" = "#D3D3D3FF";
      };
      "builtinAttribute" = {
        "foreground" = "#D3D3D3FF";
      };
      "decorator" = {
        "foreground" = "#D3D3D3FF";
      };
      "macro" = {
        "foreground" = "#D3D3D3FF";
      };
      "function" = {
        "foreground" = "#D3D3D3FF";
      };
      #
      "unresolvedReference" = {
        "foreground" = "#FFC5C5FF";
      };
      "method" = {
        "foreground" = "#FFC5C5FF";
      };
      "property" = {
        "foreground" = "#FFC5C5FF";
      };
      #
      "selfTypeKeyword" = {
        "foreground" = "#FFC5C5FF";
      };
      "struct" = {
        "foreground" = "#FFC5C5FF";
      };
      "enumMember" = {
        "foreground" = "#FFC5C5FF";
      };
      "enum" = {
        "foreground" = "#FFC5C5FF";
      };
      #
      "selfKeyword" = {
        "foreground" = "#DBDB00FF";
      };
      "parameter" = {
        "foreground" = "#DBDB00FF";
      };
      #
      "variable" = {
        "foreground" = "#FFC994FF";
      };
      #
      "boolean" = {
        "foreground" = "#959595FF";
      };
      "number" = {
        "foreground" = "#959595FF";
      };
      "string" = {
        "foreground" = "#959595FF";
      };
      #
      "lifetime" = {
        "foreground" = "#959595FF";
      };
      "generic" = {
        "foreground" = "#959595FF";
      };
      "builtinType" = {
        "foreground" = "#959595FF";
      };
      "typeParameter" = {
        "foreground" = "#959595FF";
      };
      "derive" = {
        "foreground" = "#959595FF";
      };
      "interface" = {
        "foreground" = "#959595FF";
      };
      "typeAlias" = {
        "foreground" = "#959595FF";
      };
      #
      "attributeBracket" = {
        "foreground" = "#9595957F";
      };
      "namespace" = {
        "foreground" = "#9595957F";
      };
      "operator" = {
        "foreground" = "#9595957F";
      };
      "comment" = {
        "foreground" = "#9595957F";
      };
      #
      "keyword" = {
        "foreground" = "#9595953F";
      };
      #
      "*.declaration" = {
        "underline" = true;
      };
      "*.mutable" = {
        "italic" = true;
      };
      "*.callable" = {
        "bold" = true;
      };
    };
  };
}
