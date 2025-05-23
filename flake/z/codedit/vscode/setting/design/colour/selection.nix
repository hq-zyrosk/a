let
  c9 = _.rgba 1.00000 1.00000 1.00000 0.50000;
  c5 = _.rgba 1.00000 1.00000 1.00000 0.25000;
  c1 = _.rgba 1.00000 1.00000 1.00000 0.12500;
  _ = import ./_.nix;
in {
  "minimap.selectionOccurrenceHighlight" = c9;
  "menu.selectionForeground" = c9;
  "editorOverviewRuler.selectionHighlightForeground" = c9;
  "editor.selectionForeground" = c9;

  "terminal.selectionBackground" = c5;
  "terminal.inactiveSelectionBackground" = c5;
  "selection.background" = c5;
  "minimap.selectionHighlight" = c5;
  "editor.selectionBackground" = c5;
  "editor.inactiveSelectionBackground" = c5;
  "editor.selectionHighlightBackground" = c5;

  "editor.selectionHighlightBorder" = c1;
}
