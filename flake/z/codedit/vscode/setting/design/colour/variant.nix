let
  a_yellow = "#DBDB003F";
  a_green = "#0074003F";
  a_red = "#C900003F";
  yellow = "#DBDB00FF";
  white = "#636363FF";
  red = "#C90000FF";
  orange = "#FFC994FF";
  magenta = "#FFBEFFFF";
  green = "#007400FF";
  cyan = "#006F6FFF";
  blue = "#4343FFFF";
in {
  "inlineEdit.modifiedBackground" = a_yellow;
  "inlineEdit.modifiedChangedTextBackground" = a_yellow;
  "inlineEdit.modifiedChangedLineBackground" = a_yellow;
  "editorGutter.modifiedSecondaryBackground" = a_yellow;

  "tab.unfocusedInactiveModifiedBorder" = yellow;
  "tab.unfocusedActiveModifiedBorder" = yellow;
  "tab.inactiveModifiedBorder" = yellow;
  "tab.activeModifiedBorder" = yellow;
  "settings.modifiedItemIndicator" = yellow;
  "minimapGutter.modifiedBackground" = yellow;
  "inlineEdit.tabWillAcceptModifiedBorder" = yellow;
  "inlineEdit.modifiedBorder" = yellow;
  "gitDecoration.stageModifiedResourceForeground" = yellow;
  "gitDecoration.modifiedResourceForeground" = yellow;
  "editorOverviewRuler.modifiedForeground" = yellow;
  "editorGutter.modifiedBackground" = yellow;

  "editorGutter.addedSecondaryBackground" = a_green;
  "diffEditorGutter.insertedLineBackground" = a_green;
  "diffEditor.insertedTextBorder" = a_green;
  "diffEditor.insertedTextBackground" = a_green;
  "diffEditor.insertedLineBackground" = a_green;

  "notebook.cellInsertionIndicator" = green;
  "minimapGutter.addedBackground" = green;
  "minimap.chatEditHighlight" = green;
  "inlineChatDiff.inserted" = green;
  "gitDecoration.addedResourceForeground" = green;
  "editorOverviewRuler.inlineChatInserted" = green;
  "editorOverviewRuler.addedForeground" = green;
  "editorMinimap.inlineChatInserted" = green;
  "editorGutter.addedBackground" = green;
  "diffEditorOverview.insertedForeground" = green;

  "editorGutter.deletedSecondaryBackground" = a_red;
  "diffEditorGutter.removedLineBackground" = a_red;
  "diffEditor.removedTextBorder" = a_red;
  "diffEditor.removedTextBackground" = a_red;
  "diffEditor.removedLineBackground" = a_red;

  "minimapGutter.deletedBackground" = red;
  "inlineChatDiff.removed" = red;
  "gitDecoration.stageDeletedResourceForeground" = red;
  "gitDecoration.deletedResourceForeground" = red;
  "editorOverviewRuler.inlineChatRemoved" = red;
  "editorOverviewRuler.deletedForeground" = red;
  "editorGutter.deletedBackground" = red;
  "diffEditorOverview.removedForeground" = red;

  "notebookEditorOverviewRuler.runningCellForeground" = white;
  "gitDecoration.untrackedResourceForeground" = white;
  "gitDecoration.submoduleResourceForeground" = white;
  "gitDecoration.renamedResourceForeground" = white;
  "gitDecoration.ignoredResourceForeground" = white;
  "gitDecoration.conflictingResourceForeground" = white;
  "git.blame.editorDecorationForeground" = white;
  "editorOverviewRuler.incomingContentForeground" = white;
  "editorOverviewRuler.currentContentForeground" = white;
  "editorOverviewRuler.commonContentForeground" = white;
  "editorOverviewRuler.commentUnresolvedForeground" = white;
  "editorOverviewRuler.commentForeground" = white;
  "editorOverviewRuler.bracketMatchForeground" = white;

  "scm.historyGraph.yellow" = yellow;
  "scm.historyGraph.green" = green;
  "scm.historyGraph.red" = red;

  "terminal.ansiBrightYellow" = yellow;
  "terminal.ansiBrightWhite" = white;
  "terminal.ansiBrightRed" = red;
  "terminal.ansiBrightMagenta" = magenta;
  "terminal.ansiBrightGreen" = green;
  "terminal.ansiBrightCyan" = cyan;
  "terminal.ansiBrightBlue" = blue;

  "terminal.ansiYellow" = yellow;
  "terminal.ansiWhite" = white;
  "terminal.ansiRed" = red;
  "terminal.ansiMagenta" = magenta;
  "terminal.ansiGreen" = green;
  "terminal.ansiCyan" = cyan;
  "terminal.ansiBlue" = blue;

  "charts.yellow" = yellow;
  "charts.red" = red;
  "charts.purple" = magenta;
  "charts.orange" = orange;
  "charts.green" = green;
  "charts.blue" = blue;
}
