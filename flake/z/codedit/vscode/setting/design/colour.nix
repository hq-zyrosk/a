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
      #----------------------------------------------------------------------------------------#
      "type" = {
        "foreground" = "#FF0000FF";
      };
      "union" = {
        "foreground" = "#FF0000FF";
      };
      "toolModule" = {
        "foreground" = "#FF0000FF";
      };
      "tomlTableKey" = {
        "foreground" = "#FF0000FF";
      };
      "tomlArrayKey" = {
        "foreground" = "#FF0000FF";
      };
      "static" = {
        "foreground" = "#FF0000FF";
      };
      "procMacro" = {
        "foreground" = "#FF0000FF";
      };
      "label" = {
        "foreground" = "#FF0000FF";
      };
      "invalidEscapeSequence" = {
        "foreground" = "#FF0000FF";
      };
      "event" = {
        "foreground" = "#FF0000FF";
      };
      "deriveHelper" = {
        "foreground" = "#FF0000FF";
      };
      "constParameter" = {
        "foreground" = "#FF0000FF";
      };
      "const" = {
        "foreground" = "#FF0000FF";
      };
      "class" = {
        "foreground" = "#FF0000FF";
      };
      "character" = {
        "foreground" = "#FF0000FF";
      };
      "attribute" = {
        "foreground" = "#FF0000FF";
      };
      #----------------------------------------------------------------------------------------#
      "unresolvedReference" = {
        "foreground" = "#FFBEFFFF";
      };
      "method" = {
        "foreground" = "#FFBEFFFF";
      };
      "property" = {
        "foreground" = "#FFBEFFFF";
      };
      #----------------------------------------------------------------------------------------#
      "selfTypeKeyword" = {
        "foreground" = "#FFBEFFFF";
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
      #----------------------------------------------------------------------------------------#
      "boolean" = {
        "foreground" = "#FFC5C5FF";
      };
      "number" = {
        "foreground" = "#FFC5C5FF";
      };
      "string" = {
        "foreground" = "#FFC5C5FF";
      };
      #----------------------------------------------------------------------------------------#
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
      #----------------------------------------------------------------------------------------#
      "operator" = {
        "foreground" = "#FF00FFFF";
      };
      "macroBang" = {
        "foreground" = "#FF00FFFF";
      };
      "logical" = {
        "foreground" = "#FF00FFFF";
      };
      "comparison" = {
        "foreground" = "#FF00FFFF";
      };
      "bitwise" = {
        "foreground" = "#FF00FFFF";
      };
      "arithmetic" = {
        "foreground" = "#FF00FFFF";
      };
      #----------------------------------------------------------------------------------------#
      "parameter" = {
        "foreground" = "#00F500FF";
      };
      #----------------------------------------------------------------------------------------#
      "selfKeyword" = {
        "foreground" = "#00EBEBFF";
      };
      "variable" = {
        "foreground" = "#00EBEBFF";
      };
      #----------------------------------------------------------------------------------------#
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
      "regexp" = {
        "foreground" = "#CFCFFFFF";
      };
      "macro" = {
        "foreground" = "#CFCFFFFF";
      };
      "function" = {
        "foreground" = "#CFCFFFFF";
      };
      #----------------------------------------------------------------------------------------#
      "namespace" = {
        "foreground" = "#CFCFFFFF";
      };
      #----------------------------------------------------------------------------------------#
      "semicolon" = {
        "foreground" = "#808080FF";
      };
      "punctuation" = {
        "foreground" = "#808080FF";
      };
      "parenthesis" = {
        "foreground" = "#808080FF";
      };
      "dot" = {
        "foreground" = "#808080FF";
      };
      "comma" = {
        "foreground" = "#808080FF";
      };
      "colon" = {
        "foreground" = "#808080FF";
      };
      "bracket" = {
        "foreground" = "#808080FF";
      };
      "brace" = {
        "foreground" = "#808080FF";
      };
      "attributeBracket" = {
        "foreground" = "#808080FF";
      };
      "angle" = {
        "foreground" = "#808080FF";
      };
      #----------------------------------------------------------------------------------------#
      "comment" = {
        "foreground" = "#515151FF";
      };
      #----------------------------------------------------------------------------------------#
      "keyword" = {
        "foreground" = "#222222FF";
      };
      #----------------------------------------------------------------------------------------#
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
