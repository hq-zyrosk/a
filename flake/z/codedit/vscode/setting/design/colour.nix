let
  ng_warning = import ./colour/ng/warning.nix;
  ng_inform = import ./colour/ng/inform.nix;
  ng_error = import ./colour/ng/error.nix;
  ng = import ./colour/ng.nix;
  fg_selection = import ./colour/fg/selection.nix;
  fg_highlight = import ./colour/fg/highlight.nix;
  fg_cursor = import ./colour/fg/cursor.nix;
  fg = import ./colour/fg.nix;
  bg_unknown = import ./colour/bg/unknown.nix;
  bg_slider = import ./colour/bg/slider.nix;
  bg_shadow = import ./colour/bg/shadow.nix;
  bg_ignore = import ./colour/bg/ignore.nix;
  bg_border = import ./colour/bg/border.nix;
  bg = import ./colour/bg.nix;
in {
  "workbench.colorCustomizations" =
    ng_warning
    // ng_inform
    // ng_error
    // ng
    // fg_selection
    // fg_highlight
    // fg_cursor
    // fg
    // bg_unknown
    // bg_slider
    // bg_shadow
    // bg_ignore
    // bg_border
    // bg;
  "editor.tokenColorCustomizations" = {
    "textMateRules" = [
      {
        "scope" = [
          "entity.other.attribute-name.multipart"
          "support.type.property-name"
          "variable"
        ];
        "settings" = {
          "foreground" = "#4343FFFF";
        };
      }
      {
        "scope" = [
          "entity.name.function"
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
      "property" = {
        "foreground" = "#006F6FFF";
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
      "method" = {
        "foreground" = "#4343FFFF";
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
      "parameter" = {
        "foreground" = "#007400FF";
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
