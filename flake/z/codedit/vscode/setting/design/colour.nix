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
  indent = import ./colour/indent.nix;
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
    // indent
    // highlight
    // hidden
    // foreground
    // cursor
    // border
    // background;
  "editor.tokenColorCustomizations" = {
    "textMateRules" = [
      # {
      #   "scope" = [
      #     "storage.type.rust"
      #   ];
      #   "settings" = {
      #     "fontStyle" = "strikethrough";
      #   };
      # }
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
        "foreground" = "#808080FF";
      };
      "escapeSequence" = {
        "foreground" = "#808080FF";
      };
      "builtinAttribute" = {
        "foreground" = "#808080FF";
      };
      "decorator" = {
        "foreground" = "#808080FF";
      };
      "macro" = {
        "foreground" = "#808080FF";
      };
      "function" = {
        "foreground" = "#808080FF";
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
      "selfKeyword" = {
        "foreground" = "#DBDB00FF";
        "strikethrough" = false;
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
        "foreground" = "#5A5A5AFF";
      };
      "namespace" = {
        "foreground" = "#5A5A5AFF";
      };
      "operator" = {
        "foreground" = "#5A5A5AFF";
      };
      "comment" = {
        "foreground" = "#5A5A5AFF";
      };
      #
      "keyword.controlFlow" = {
        "foreground" = "#5A5A5AFF";
        "strikethrough" = false;
      };
      "keyword.unsafe" = {
        "foreground" = "#5A5A5AFF";
        "strikethrough" = false;
      };
      "keyword" = {
        "foreground" = "#5A5A5AFF";
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
