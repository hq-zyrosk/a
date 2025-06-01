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
        "foreground" = "#FFFFFFFF";
      };
      "union" = {
        "foreground" = "#FFFFFFFF";
      };
      "toolModule" = {
        "foreground" = "#FFFFFFFF";
      };
      "tomlTableKey" = {
        "foreground" = "#FFFFFFFF";
      };
      "tomlArrayKey" = {
        "foreground" = "#FFFFFFFF";
      };
      "static" = {
        "foreground" = "#FFFFFFFF";
      };
      "procMacro" = {
        "foreground" = "#FFFFFFFF";
      };
      "label" = {
        "foreground" = "#FFFFFFFF";
      };
      "invalidEscapeSequence" = {
        "foreground" = "#FFFFFFFF";
      };
      "event" = {
        "foreground" = "#FFFFFFFF";
      };
      "deriveHelper" = {
        "foreground" = "#FFFFFFFF";
      };
      "constParameter" = {
        "foreground" = "#FFFFFFFF";
      };
      "const" = {
        "foreground" = "#FFFFFFFF";
      };
      "class" = {
        "foreground" = "#FFFFFFFF";
      };
      "character" = {
        "foreground" = "#FFFFFFFF";
      };
      "attribute" = {
        "foreground" = "#FFFFFFFF";
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
      "keyword" = {
        "foreground" = "#515151FF";
      };
      #
      "comment" = {
        "foreground" = "#FF00FFFF";
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
      "semicolon" = {
        "foreground" = "#FF00FFFF";
      };
      "punctuation" = {
        "foreground" = "#FF00FFFF";
      };
      "parenthesis" = {
        "foreground" = "#FF00FFFF";
      };
      "dot" = {
        "foreground" = "#FF00FFFF";
      };
      "comma" = {
        "foreground" = "#FF00FFFF";
      };
      "colon" = {
        "foreground" = "#FF00FFFF";
      };
      "bracket" = {
        "foreground" = "#FF00FFFF";
      };
      "brace" = {
        "foreground" = "#FF00FFFF";
      };
      "attributeBracket" = {
        "foreground" = "#FF00FFFF";
      };
      "angle" = {
        "foreground" = "#FF00FFFF";
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
