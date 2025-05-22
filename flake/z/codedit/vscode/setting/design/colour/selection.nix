let
  c9 = _.rgba 1.00000 1.00000 1.00000 1.00000;
  c5 = _.rgba 0.50000 0.50000 0.50000 1.00000;
  c1 = _.rgba 0.00000 0.00000 0.00000 1.00000;
  _ = import ./_.nix;
in {
  "minimap.selectionOccurrenceHighlight" = c9;
  "minimap.chatEditHighlight" = c9;
  "menu.selectionForeground" = c9;
  "editorOverviewRuler.selectionHighlightForeground" = c9;
  "editor.selectionForeground" = c9;

  "editor.selectionHighlightBorder" = c5;

  "terminal.selectionBackground" = c1;
  "terminal.inactiveSelectionBackground" = c1;
  "selection.background" = c1;
  "minimap.selectionHighlight" = c1;
  "editor.selectionBackground" = c1;
  "editor.inactiveSelectionBackground" = c1;
  "editor.selectionHighlightBackground" = c1;
}
