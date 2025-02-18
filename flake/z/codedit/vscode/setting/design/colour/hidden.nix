let
  c5 = _.rgba 1 0 1 1;
  _ = import ./_.nix;
in
{
  "editor.foldBackground" = c5;
  "list.activeSelectionBackground" = c5;
  "list.inactiveSelectionBackground" = c5;
  "list.hoverBackground" = c5;
  "list.inactiveFocusBackground" = c5;
  "list.focusBackground" = c5;
  "editor.lineHighlightBackground" = c5;
  "editorBracketMatch.background" = c5;
  "editorOverviewRuler.background" = c5;
  "list.focusAndSelectionOutline" = c5;
  "diffEditor.diagonalFill" = c5;
  "tab.unfocusedActiveBorderTop" = c5;
  "tab.activeBorderTop" = c5;
  "tab.unfocusedActiveBorder" = c5;
  "contrastActiveBorder" = c5;
  "tab.activeBorder" = c5;
  "tab.unfocusedHoverBorder" = c5;
  "tab.hoverBorder" = c5;
  "editor.lineHighlightBorder" = c5;
  "contrastBorder" = c5;
  "editorBracketMatch.border" = c5;
  "sideBar.border" = c5;
  "statusBar.border" = c5;
  "editorOverviewRuler.border" = c5;
  "bookmarks.overviewRuler" = c5;
}
