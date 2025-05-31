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
          "variable.language.self"
        ];
        "settings" = {
          "foreground" = "#00F500FF";
        };
      }
      {
        "scope" = [
          "storage.type.rust"
        ];
        "settings" = {
          "fontStyle" = "strikethrough";
        };
      }
      {
        "scope" = [
          "punctuation"
          "keyword"
        ];
        "settings" = {
          "fontStyle" = "strikethrough";
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
        "strikethrough" = false;
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
      "selfKeyword" = {
        "foreground" = "#00F500FF";
        "strikethrough" = false;
      };
      "parameter" = {
        "foreground" = "#00F500FF";
      };
      #
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
