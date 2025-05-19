let
  variant = import ./colour/variant.nix;
  unknown = import ./colour/unknown.nix;
  shadow = import ./colour/shadow.nix;
  rgb = import ./colour/rgb.nix;
  redundant = import ./colour/redundant.nix;
  indent = import ./colour/indent.nix;
  highlight = import ./colour/highlight.nix;
  hidden = import ./colour/hidden.nix;
  foreground = import ./colour/foreground.nix;
  border = import ./colour/border.nix;
  background = import ./colour/background.nix;
in {
  "workbench.colorCustomizations" =
    variant
    // unknown
    // shadow
    // rgb
    // redundant
    // indent
    // highlight
    // hidden
    // foreground
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
        "foreground" = "#B3B3B3FF";
      };
      "escapeSequence" = {
        "foreground" = "#B3B3B3FF";
      };
      "builtinAttribute" = {
        "foreground" = "#B3B3B3FF";
      };
      "decorator" = {
        "foreground" = "#B3B3B3FF";
      };
      "macro" = {
        "foreground" = "#B3B3B3FF";
      };
      "function" = {
        "foreground" = "#B3B3B3FF";
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
