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
          "foreground" = "#00EBEBFF";
        };
      }
    ];
  };
  "editor.semanticTokenColorCustomizations" = {
    "enabled" = true;
    "rules" = {
      #
      "angle" = "#FFFFFFFF";
      "semicolon" = "#FFFFFFFF";
      "punctuation" = "#FFFFFFFF";
      "brace" = "#FFFFFFFF";
      "bracket" = "#FFFFFFFF";
      "parenthesis" = "#FFFFFFFF";
      "colon" = "#FFFFFFFF";
      "comma" = "#FFFFFFFF";
      "dot" = "#FFFFFFFF";
      #
      "attributeBracket" = {
        "foreground" = "#FF00FFFF";
      };
      "operator" = {
        "foreground" = "#FF00FFFF";
      };
      "bitwise" = "#FF00FFFF";
      "macroBang" = "#FF00FFFF";
      "logical" = "#FF00FFFF";
      "comparison" = "#FF00FFFF";
      "arithmetic" = "#FF00FFFF";
      #
      "type" = "#FF0000FF";
      "union" = "#FF0000FF";
      "toolModule" = "#FF0000FF";
      "tomlTableKey" = "#FF0000FF";
      "tomlArrayKey" = "#FF0000FF";
      "static" = "#FF0000FF";
      "regexp" = "#FF0000FF";
      "procMacro" = "#FF0000FF";
      "label" = "#FF0000FF";
      "invalidEscapeSequence" = "#FF0000FF";
      "event" = "#FF0000FF";
      "deriveHelper" = "#FF0000FF";
      "constParameter" = "#FF0000FF";
      "const" = "#FF0000FF";
      "class" = "#FF0000FF";
      "character" = "#FF0000FF";
      "attribute" = "#FF0000FF";
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
      "namespace" = {
        "foreground" = "#808080FF";
      };
      "comment" = {
        "foreground" = "#808080FF";
      };
      #
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
