let
  word = import ./colour/word.nix;
  variant_warning = import ./colour/variant/warning.nix;
  variant_inform = import ./colour/variant/inform.nix;
  variant_error = import ./colour/variant/error.nix;
  variant = import ./colour/variant.nix;
  unknown = import ./colour/unknown.nix;
  slider = import ./colour/slider.nix;
  shadow = import ./colour/shadow.nix;
  selection = import ./colour/selection.nix;
  redundant = import ./colour/redundant.nix;
  highlight = import ./colour/highlight.nix;
  hidden = import ./colour/hidden.nix;
  foreground = import ./colour/foreground.nix;
  cursor = import ./colour/cursor.nix;
  border = import ./colour/border.nix;
  background = import ./colour/background.nix;
in {
  "workbench.colorCustomizations" =
    word
    // variant_warning
    // variant_inform
    // variant_error
    // variant
    // unknown
    // slider
    // shadow
    // selection
    // redundant
    // highlight
    // hidden
    // foreground
    // cursor
    // border
    // background;
  "editor.tokenColorCustomizations" = {
    "textMateRules" = [
      {
        "scope" = [
          "variable"
        ];
        "settings" = {
          "fontStyle" = "";
          "foreground" = "#00EBEBFF";
        };
      }
      {
        "scope" = [
          "punctuation"
          "keyword"
        ];
        "settings" = {
          "fontStyle" = "";
          "foreground" = "#222222FF";
        };
      }
    ];
  };
  "editor.semanticTokenColorCustomizations" = {
    "enabled" = true;
    "rules" = {
      #
      "unresolvedReference" = {
        "foreground" = "#FFBEFFFF";
      };
      "method" = {
        "foreground" = "#FFBEFFFF";
      };
      "property" = {
        "foreground" = "#FFBEFFFF";
      };
      #
      "selfTypeKeyword" = {
        "foreground" = "#FFBEFFFF";
        "strikethrough" = false;
      };
      "struct" = {
        "foreground" = "#FFBEFFFF";
      };
      "enumMember" = {
        "foreground" = "#FFBEFFFF";
      };
      "enum" = {
        "foreground" = "#FFBEFFFF";
      };
      #
      "boolean" = {
        "foreground" = "#FFC5C5FF";
      };
      "number" = {
        "foreground" = "#FFC5C5FF";
      };
      "string" = {
        "foreground" = "#FFC5C5FF";
      };
      #
      "lifetime" = {
        "foreground" = "#DADA00FF";
      };
      "generic" = {
        "foreground" = "#DADA00FF";
      };
      "builtinType" = {
        "foreground" = "#DADA00FF";
      };
      "typeParameter" = {
        "foreground" = "#DADA00FF";
      };
      "derive" = {
        "foreground" = "#DADA00FF";
      };
      "interface" = {
        "foreground" = "#DADA00FF";
      };
      "typeAlias" = {
        "foreground" = "#DADA00FF";
      };
      #
      "parameter" = {
        "foreground" = "#00F500FF";
      };
      #
      "selfKeyword" = {
        "foreground" = "#00EBEBFF";
        "strikethrough" = false;
      };
      "variable" = {
        "foreground" = "#00EBEBFF";
      };
      #
      "formatSpecifier" = {
        "foreground" = "#CFCFFFFF";
      };
      "escapeSequence" = {
        "foreground" = "#CFCFFFFF";
      };
      "builtinAttribute" = {
        "foreground" = "#CFCFFFFF";
      };
      "decorator" = {
        "foreground" = "#CFCFFFFF";
      };
      "macro" = {
        "foreground" = "#CFCFFFFF";
      };
      "function" = {
        "foreground" = "#CFCFFFFF";
      };
      #
      "attributeBracket" = {
        "foreground" = "#808080FF";
      };
      "namespace" = {
        "foreground" = "#808080FF";
      };
      "operator" = {
        "foreground" = "#808080FF";
      };
      "comment" = {
        "foreground" = "#808080FF";
      };
      #
      "keyword.controlFlow" = {
        "foreground" = "#515151FF";
        "strikethrough" = false;
      };
      "keyword.unsafe" = {
        "foreground" = "#515151FF";
        "strikethrough" = false;
      };
      "keyword" = {
        "foreground" = "#515151FF";
      };
      #
      "*.mutable" = {
        "underline" = true;
      };
      "*.callable" = {
        "italic" = true;
      };
      "*.declaration" = {
        "bold" = true;
      };
    };
  };
}
