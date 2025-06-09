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
          "foreground" = "#006F6FFF";
        };
      }
      {
        "scope" = [
          "string.quoted.double.nix"
        ];
        "settings" = {
          "foreground" = "#636363FF";
        };
      }
    ];
  };
  "editor.semanticTokenColorCustomizations" = {
    "enabled" = true;
    "rules" = {
      #----------------------------------------------------------------------------------------#
      "method" = {
        "foreground" = "#B100B1FF";
      };
      "property" = {
        "foreground" = "#B100B1FF";
      };
      #----------------------------------------------------------------------------------------#
      "selfTypeKeyword" = {
        "foreground" = "#B100B1FF";
      };
      "struct" = {
        "foreground" = "#B100B1FF";
      };
      "enumMember" = {
        "foreground" = "#B100B1FF";
      };
      "enum" = {
        "foreground" = "#B100B1FF";
      };
      #----------------------------------------------------------------------------------------#
      "lifetime" = {
        "foreground" = "#666600FF";
      };
      "generic" = {
        "foreground" = "#666600FF";
      };
      "builtinType" = {
        "foreground" = "#666600FF";
      };
      "typeParameter" = {
        "foreground" = "#666600FF";
      };
      "derive" = {
        "foreground" = "#666600FF";
      };
      "interface" = {
        "foreground" = "#666600FF";
      };
      "typeAlias" = {
        "foreground" = "#666600FF";
      };
      #----------------------------------------------------------------------------------------#
      "parameter" = {
        "foreground" = "#007400FF";
      };
      #----------------------------------------------------------------------------------------#
      "tomlArrayKey" = {
        "foreground" = "#006F6FFF";
      };
      "selfKeyword" = {
        "foreground" = "#006F6FFF";
      };
      "variable" = {
        "foreground" = "#006F6FFF";
      };
      #----------------------------------------------------------------------------------------#
      "tomlTableKey" = {
        "foreground" = "#4343FFFF";
      };
      "formatSpecifier" = {
        "foreground" = "#4343FFFF";
      };
      "escapeSequence" = {
        "foreground" = "#4343FFFF";
      };
      "builtinAttribute" = {
        "foreground" = "#4343FFFF";
      };
      "decorator" = {
        "foreground" = "#4343FFFF";
      };
      "regexp" = {
        "foreground" = "#4343FFFF";
      };
      "macro" = {
        "foreground" = "#4343FFFF";
      };
      "function" = {
        "foreground" = "#4343FFFF";
      };
      #----------------------------------------------------------------------------------------#
      "namespace" = {
        "foreground" = "#4343FFFF";
      };
      #----------------------------------------------------------------------------------------#
      "boolean" = {
        "foreground" = "#636363FF";
      };
      "string" = {
        "foreground" = "#636363FF";
      };
      "number" = {
        "foreground" = "#636363FF";
      };
      #----------------------------------------------------------------------------------------#
      "operator" = {
        "foreground" = "#0000FFFF";
      };
      "macroBang" = {
        "foreground" = "#0000FFFF";
      };
      "logical" = {
        "foreground" = "#0000FFFF";
      };
      "comparison" = {
        "foreground" = "#0000FFFF";
      };
      "bitwise" = {
        "foreground" = "#0000FFFF";
      };
      "arithmetic" = {
        "foreground" = "#0000FFFF";
      };
      #----------------------------------------------------------------------------------------#
      "semicolon" = {
        "foreground" = "#636363FF";
      };
      "punctuation" = {
        "foreground" = "#636363FF";
      };
      "parenthesis" = {
        "foreground" = "#636363FF";
      };
      "dot" = {
        "foreground" = "#636363FF";
      };
      "comma" = {
        "foreground" = "#636363FF";
      };
      "colon" = {
        "foreground" = "#636363FF";
      };
      "bracket" = {
        "foreground" = "#636363FF";
      };
      "brace" = {
        "foreground" = "#636363FF";
      };
      "attributeBracket" = {
        "foreground" = "#636363FF";
      };
      "angle" = {
        "foreground" = "#636363FF";
      };
      #----------------------------------------------------------------------------------------#
      "unresolvedReference" = {
        "foreground" = "#ADADADFF";
      };
      "type" = {
        "foreground" = "#ADADADFF";
      };
      "union" = {
        "foreground" = "#ADADADFF";
      };
      "toolModule" = {
        "foreground" = "#ADADADFF";
      };
      "static" = {
        "foreground" = "#ADADADFF";
      };
      "procMacro" = {
        "foreground" = "#ADADADFF";
      };
      "label" = {
        "foreground" = "#ADADADFF";
      };
      "invalidEscapeSequence" = {
        "foreground" = "#ADADADFF";
      };
      "event" = {
        "foreground" = "#ADADADFF";
      };
      "deriveHelper" = {
        "foreground" = "#ADADADFF";
      };
      "constParameter" = {
        "foreground" = "#ADADADFF";
      };
      "const" = {
        "foreground" = "#ADADADFF";
      };
      "class" = {
        "foreground" = "#ADADADFF";
      };
      "character" = {
        "foreground" = "#ADADADFF";
      };
      "attribute" = {
        "foreground" = "#ADADADFF";
      };
      #----------------------------------------------------------------------------------------#
      "comment" = {
        "foreground" = "#ADADADFF";
      };
      #----------------------------------------------------------------------------------------#
      "keyword" = {
        "foreground" = "#ADADADFF";
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
