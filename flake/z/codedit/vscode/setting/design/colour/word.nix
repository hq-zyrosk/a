let
  c9 = _.rgba 1.00000 0.00000 1.00000 0.50000;
  c5 = _.rgba 1.00000 0.00000 1.00000 0.25000;
  c1 = _.rgba 1.00000 0.00000 1.00000 0.12500;
  _ = import ./_.nix;
in {
  "list.focusHighlightForeground" = c9;
  "editorSuggestWidget.focusHighlightForeground" = c9;
  "editorOverviewRuler.wordHighlightStrongForeground" = c9;

  "editor.wordHighlightStrongBackground" = c5;
  "editor.focusedStackFrameHighlightBackground" = c5;

  "editor.wordHighlightStrongBorder" = c1;
}
