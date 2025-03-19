let
  w9 = _.rgba 1.00000 1.00000 0.00000 1.00000;
  w5 = _.rgba 1.00000 1.00000 0.00000 0.25000;
  w1 = _.rgba 1.00000 1.00000 0.00000 0.06250;
  i9 = _.rgba 0.00000 1.00000 0.00000 1.00000;
  i5 = _.rgba 0.00000 1.00000 0.00000 0.25000;
  i1 = _.rgba 1.00000 1.00000 0.00000 0.06250;
  e9 = _.rgba 1.00000 0.00000 0.00000 1.00000;
  e5 = _.rgba 1.00000 0.00000 0.00000 0.25000;
  e1 = _.rgba 1.00000 1.00000 0.00000 0.06250;
  c9 = _.rgba 1.00000 0.00000 0.00000 1.00000;
  c5 = _.rgba 0.00000 0.00000 0.00000 0.25000;
  # c1 = _.rgba 1.00000 1.00000 0.00000 0.06250;
  _ = import ./_.nix;
in {
  "statusBarItem.warningHoverForeground" = w9;
  "statusBarItem.warningForeground" = w9;
  "problemsWarningIcon.foreground" = w9;
  "notificationsWarningIcon.foreground" = w9;
  "list.warningForeground" = w9;
  "inputValidation.warningForeground" = w9;
  "gauge.warningForeground" = w9;
  "editorOverviewRuler.warningForeground" = w9;
  "debugConsole.warningForeground" = w9;
  "activityWarningBadge.foreground" = w9;

  "statusBarItem.warningHoverBackground" = w5;
  "statusBarItem.warningBackground" = w5;
  "minimap.warningHighlight" = w5;
  "inputValidation.warningBorder" = w5;
  "inputValidation.warningBackground" = w5;
  "gauge.warningBackground" = w5;
  "editorWarning.border" = w5;
  "editorMarkerNavigationWarning.headerBackground" = w5;
  "editorMarkerNavigationWarning.background" = w5;
  "activityWarningBadge.background" = w5;

  "editorWarning.foreground" = w1;
  "editorWarning.background" = w1;

  "testing.message.info.decorationForeground" = i9;
  "search.resultsInfoForeground" = i9;
  "problemsInfoIcon.foreground" = i9;
  "notificationsInfoIcon.foreground" = i9;
  "minimap.infoHighlight" = i9;
  "inputValidation.infoForeground" = i9;
  "editorOverviewRuler.infoForeground" = i9;
  "editorLightBulbAutoFix.foreground" = i9;
  "editorLightBulbAi.foreground" = i9;
  "editorLightBulb.foreground" = i9;
  "editorHint.foreground" = i9;
  "debugConsole.infoForeground" = i9;

  "testing.message.info.lineBackground" = i5;
  "inputValidation.infoBorder" = i5;
  "inputValidation.infoBackground" = i5;
  "editorMarkerNavigationInfo.headerBackground" = i5;
  "editorMarkerNavigationInfo.background" = i5;
  "editorInfo.border" = i5;

  "editorInfo.foreground" = i1;
  "editorInfo.background" = i1;

  "testing.message.error.decorationForeground" = e9;
  "testing.message.error.badgeForeground" = e9;
  "testing.iconErrored.retired" = e9;
  "testing.iconErrored" = e9;
  "statusBarItem.errorHoverForeground" = e9;
  "statusBarItem.errorForeground" = e9;
  "statusBar.offlineForeground" = e9;
  "statusBar.noFolderForeground" = e9;
  "problemsErrorIcon.foreground" = e9;
  "notificationsErrorIcon.foreground" = e9;
  "notebookStatusErrorIcon.foreground" = e9;
  "listFilterWidget.noMatchesOutline" = e9;
  "list.invalidItemForeground" = e9;
  "list.errorForeground" = e9;
  "inputValidation.errorForeground" = e9;
  "gauge.errorForeground" = e9;
  "errorForeground" = e9;
  "editorUnnecessaryCode.opacity" = e9;
  "editorOverviewRuler.errorForeground" = e9;
  "editorBracketHighlight.unexpectedBracket.foreground" = e9;
  "debugTokenExpression.error" = e9;
  "debugConsole.errorForeground" = e9;
  "activityErrorBadge.foreground" = e9;

  "testing.message.error.lineBackground" = e5;
  "testing.message.error.badgeBorder" = e5;
  "testing.message.error.badgeBackground" = e5;
  "terminalCommandDecoration.errorBackground" = e5;
  "statusBarItem.errorHoverBackground" = e5;
  "statusBarItem.errorBackground" = e5;
  "minimap.errorHighlight" = e5;
  "inputValidation.errorBorder" = e5;
  "inputValidation.errorBackground" = e5;
  "gauge.errorBackground" = e5;
  "editorUnnecessaryCode.border" = e5;
  "editorMarkerNavigationError.headerBackground" = e5;
  "editorMarkerNavigationError.background" = e5;
  "editorGroupHeader.noTabsBackground" = e5;
  "editorGroup.focusedEmptyBorder" = e5;
  "editorGroup.emptyBackground" = e5;
  "editorError.border" = e5;
  "activityErrorBadge.background" = e5;

  "editorError.foreground" = e1;
  "editorError.background" = e1;

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
