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
      {
        "scope" = [
          "string.quoted.double.nix"
        ];
        "settings" = {
          "foreground" = "#FFC5C5FF";
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
      "tomlArrayKey" = {
        "foreground" = "#00EBEBFF";
      };
      "selfKeyword" = {
        "foreground" = "#00EBEBFF";
      };
      "variable" = {
        "foreground" = "#00EBEBFF";
      };
      #----------------------------------------------------------------------------------------#
      "tomlTableKey" = {
        "foreground" = "#CFCFFFFF";
      };
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
      "boolean" = {
        "foreground" = "#FFC5C5FF";
      };
      "string" = {
        "foreground" = "#FFC5C5FF";
      };
      "number" = {
        "foreground" = "#FFC5C5FF";
      };
      #----------------------------------------------------------------------------------------#
      "operator" = {
        "foreground" = "#808080FF";
      };
      "macroBang" = {
        "foreground" = "#808080FF";
      };
      "logical" = {
        "foreground" = "#808080FF";
      };
      "comparison" = {
        "foreground" = "#808080FF";
      };
      "bitwise" = {
        "foreground" = "#808080FF";
      };
      "arithmetic" = {
        "foreground" = "#808080FF";
      };
      #----------------------------------------------------------------------------------------#
      "semicolon" = {
        "foreground" = "#515151FF";
      };
      "punctuation" = {
        "foreground" = "#515151FF";
      };
      "parenthesis" = {
        "foreground" = "#515151FF";
      };
      "dot" = {
        "foreground" = "#515151FF";
      };
      "comma" = {
        "foreground" = "#515151FF";
      };
      "colon" = {
        "foreground" = "#515151FF";
      };
      "bracket" = {
        "foreground" = "#515151FF";
      };
      "brace" = {
        "foreground" = "#515151FF";
      };
      "attributeBracket" = {
        "foreground" = "#515151FF";
      };
      "angle" = {
        "foreground" = "#515151FF";
      };
      #----------------------------------------------------------------------------------------#
      "comment" = {
        "foreground" = "#222222FF";
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
