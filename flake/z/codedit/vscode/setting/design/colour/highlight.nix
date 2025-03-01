let
  s9 = _.rgba 1.00000 1.00000 1.00000 0.50000;
  s5 = _.rgba 1.00000 1.00000 1.00000 0.25000;
  s1 = _.rgba 1.00000 1.00000 1.00000 0.12500;

  e9 = _.rgba 1.00000 0.00000 1.00000 0.50000;
  e5 = _.rgba 1.00000 0.00000 1.00000 0.25000;
  e1 = _.rgba 1.00000 0.00000 1.00000 0.12500;

  c9 = _.rgba 1.00000 1.00000 0.00000 0.50000;
  c5 = _.rgba 1.00000 1.00000 0.00000 0.25000;
  c1 = _.rgba 1.00000 1.00000 0.00000 0.12500;

  _ = import ./_.nix;
in
{
  "minimap.selectionOccurrenceHighlight" = s9;
  "minimap.chatEditHighlight" = s9;
  "menu.selectionForeground" = s9;
  "editorOverviewRuler.selectionHighlightForeground" = s9;
  "editor.selectionForeground" = s9;

  "terminal.selectionBackground" = s5;
  "terminal.inactiveSelectionBackground" = s5;
  "selection.background" = s5;
  "minimap.selectionHighlight" = s5;
  "editor.selectionBackground" = s5;
  "editor.inactiveSelectionBackground" = s5;
  "editor.selectionHighlightBackground" = s5;

  "editor.selectionHighlightBorder" = s1;

  "list.focusHighlightForeground" = e9;
  "editorSuggestWidget.focusHighlightForeground" = e9;
  "editorOverviewRuler.wordHighlightStrongForeground" = e9;

  "editor.wordHighlightStrongBackground" = e5;
  "editor.focusedStackFrameHighlightBackground" = e5;

  "editor.wordHighlightStrongBorder" = e1;

  "terminalOverviewRuler.findMatchForeground" = c9;
  "list.highlightForeground" = c9;
  "editorSuggestWidget.highlightForeground" = c9;
  "editorOverviewRuler.wordHighlightTextForeground" = c9;
  "editorOverviewRuler.wordHighlightForeground" = c9;
  "editorOverviewRuler.rangeHighlightForeground" = c9;
  "editorOverviewRuler.findMatchForeground" = c9;
  "editorHoverWidget.highlightForeground" = c9;
  "editor.findMatchHighlightForeground" = c9;
  "editor.findMatchForeground" = c9;

  "terminal.hoverHighlightBackground" = c5;
  "terminal.findMatchHighlightBackground" = c5;
  "terminal.findMatchBackground" = c5;
  "searchEditor.findMatchBackground" = c5;
  "peekViewResult.matchHighlightBackground" = c5;
  "peekViewEditor.matchHighlightBackground" = c5;
  "notebook.symbolHighlightBackground" = c5;
  "minimap.findMatchHighlight" = c5;
  "list.filterMatchBackground" = c5;
  "interactiveEditor.regionHighlight" = c5;
  "inlineChat.regionHighlight" = c5;
  "editorUnicodeHighlight.background" = c5;
  "editor.wordHighlightTextBackground" = c5;
  "editor.wordHighlightBackground" = c5;
  "editor.symbolHighlightBackground" = c5;
  "editor.stackFrameHighlightBackground" = c5;
  "editor.snippetTabstopHighlightBackground" = c5;
  "editor.snippetFinalTabstopHighlightBackground" = c5;
  "editor.rangeHighlightBackground" = c5;
  "editor.lineHighlightBackground" = c5;
  "editor.hoverHighlightBackground" = c5;
  "editor.findRangeHighlightBackground" = c5;
  "editor.findMatchHighlightBackground" = c5;
  "editor.findMatchBackground" = c5;
  "debugView.valueChangedHighlight" = c5;

  "terminal.findMatchHighlightBorder" = c1;
  "terminal.findMatchBorder" = c1;
  "searchEditor.findMatchBorder" = c1;
  "peekViewEditor.matchHighlightBorder" = c1;
  "list.filterMatchBorder" = c1;
  "editorUnicodeHighlight.border" = c1;
  "editor.wordHighlightTextBorder" = c1;
  "editor.wordHighlightBorder" = c1;
  "editor.symbolHighlightBorder" = c1;
  "editor.snippetTabstopHighlightBorder" = c1;
  "editor.snippetFinalTabstopHighlightBorder" = c1;
  "editor.rangeHighlightBorder" = c1;
  "editor.lineHighlightBorder" = c1;
  "editor.findRangeHighlightBorder" = c1;
  "editor.findMatchHighlightBorder" = c1;
  "editor.findMatchBorder" = c1;
}
