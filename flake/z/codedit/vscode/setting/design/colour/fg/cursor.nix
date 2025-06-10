let
  c9 = _.rgba 1.00000 0.00000 0.00000 1.00000;
  c5 = _.rgba 0.00000 0.00000 0.00000 1.00000;
  # c1 = _.rgba 0.00000 0.00000 0.00000 1.00000;
  _ = import ./_.nix;
in {
  "terminalOverviewRuler.cursorForeground" = c9;
  "terminalCursor.foreground" = c9;
  "editorMultiCursor.secondary.foreground" = c9;
  "editorMultiCursor.primary.foreground" = c9;
  "editorCursor.foreground" = c9;

  "terminalCursor.background" = c5;
  "editorMultiCursor.secondary.background" = c5;
  "editorMultiCursor.primary.background" = c5;
  "editorCursor.background" = c5;
}
