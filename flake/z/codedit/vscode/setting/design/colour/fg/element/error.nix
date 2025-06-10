let
  c9 = _.rgba 1.00000 0.00000 0.00000 1.00000;
  c5 = _.rgba 0.50000 0.00000 0.00000 1.00000;
  c1 = _.rgba 0.25000 0.00000 0.00000 1.00000;
  _ = import ./../../_.nix;
in {
  "testing.message.error.decorationForeground" = c9;
  "testing.message.error.badgeForeground" = c9;
  "testing.iconErrored.retired" = c9;
  "testing.iconErrored" = c9;
  "statusBarItem.errorHoverForeground" = c9;
  "statusBarItem.errorForeground" = c9;
  "statusBar.offlineForeground" = c9;
  "statusBar.noFolderForeground" = c9;
  "problemsErrorIcon.foreground" = c9;
  "notificationsErrorIcon.foreground" = c9;
  "notebookStatusErrorIcon.foreground" = c9;
  "listFilterWidget.noMatchesOutline" = c9;
  "list.invalidItemForeground" = c9;
  "list.errorForeground" = c9;
  "inputValidation.errorForeground" = c9;
  "gauge.errorForeground" = c9;
  "errorForeground" = c9;
  "editorUnnecessaryCode.opacity" = c9;
  "editorOverviewRuler.errorForeground" = c9;
  "editorBracketHighlight.unexpectedBracket.foreground" = c9;
  "debugTokenExpression.error" = c9;
  "debugConsole.errorForeground" = c9;
  "activityErrorBadge.foreground" = c9;
  "editorError.foreground" = c9;

  "testing.message.error.lineBackground" = c5;
  "testing.message.error.badgeBackground" = c5;
  "terminalCommandDecoration.errorBackground" = c5;
  "statusBarItem.errorHoverBackground" = c5;
  "statusBarItem.errorBackground" = c5;
  "minimap.errorHighlight" = c5;
  "inputValidation.errorBackground" = c5;
  "gauge.errorBackground" = c5;
  "editorMarkerNavigationError.headerBackground" = c5;
  "editorMarkerNavigationError.background" = c5;
  "editorGroupHeader.noTabsBackground" = c5;
  "editorGroup.emptyBackground" = c5;
  "activityErrorBadge.background" = c5;

  "testing.message.error.badgeBorder" = c1;
  "inputValidation.errorBorder" = c1;
  "editorUnnecessaryCode.border" = c1;
  "editorGroup.focusedEmptyBorder" = c1;
  "editorError.border" = c1;
}
