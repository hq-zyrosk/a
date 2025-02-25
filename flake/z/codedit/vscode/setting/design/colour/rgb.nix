let
  w5 = _.rgba 1.00000 1.00000 0.00000 1.00000;
  w1 = _.rgba 1.00000 1.00000 0.00000 0.25000;
  i5 = _.rgba 0.00000 1.00000 0.00000 1.00000;
  i1 = _.rgba 0.00000 1.00000 0.00000 0.25000;
  e5 = _.rgba 1.00000 0.00000 0.00000 1.00000;
  e1 = _.rgba 1.00000 0.00000 0.00000 0.25000;
  c5 = _.rgba 1.00000 0.00000 0.00000 1.00000;
  c1 = _.rgba 0.00000 0.00000 0.00000 0.25000;
  _ = import ./_.nix;
in
{
  "statusBarItem.warningHoverForeground" = w5;
  "statusBarItem.warningForeground" = w5;
  "problemsWarningIcon.foreground" = w5;
  "notificationsWarningIcon.foreground" = w5;
  "list.warningForeground" = w5;
  "inputValidation.warningForeground" = w5;
  "inputValidation.warningBorder" = w5;
  "editorWarning.foreground" = w5;
  "editorOverviewRuler.warningForeground" = w5;
  "debugConsole.warningForeground" = w5;
  "activityWarningBadge.foreground" = w5;

  "statusBarItem.warningHoverBackground" = w1;
  "statusBarItem.warningBackground" = w1;
  "minimap.warningHighlight" = w1;
  "inputValidation.warningBackground" = w1;
  "editorWarning.border" = w1;
  "editorWarning.background" = w1;
  "editorMarkerNavigationWarning.headerBackground" = w1;
  "editorMarkerNavigationWarning.background" = w1;
  "activityWarningBadge.background" = w1;

  "testing.message.info.decorationForeground" = i5;
  "search.resultsInfoForeground" = i5;
  "problemsInfoIcon.foreground" = i5;
  "notificationsInfoIcon.foreground" = i5;
  "minimap.infoHighlight" = i5;
  "inputValidation.infoForeground" = i5;
  "inputValidation.infoBorder" = i5;
  "editorOverviewRuler.infoForeground" = i5;
  "editorLightBulbAutoFix.foreground" = i5;
  "editorLightBulbAi.foreground" = i5;
  "editorLightBulb.foreground" = i5;
  "editorInfo.foreground" = i5;
  "editorHint.foreground" = i5;
  "debugConsole.infoForeground" = i5;

  "testing.message.info.lineBackground" = i1;
  "inputValidation.infoBackground" = i1;
  "editorMarkerNavigationInfo.headerBackground" = i1;
  "editorMarkerNavigationInfo.background" = i1;
  "editorInfo.border" = i1;
  "editorInfo.background" = i1;

  "testing.message.error.decorationForeground" = e5;
  "testing.message.error.badgeForeground" = e5;
  "testing.message.error.badgeBorder" = e5;
  "testing.iconErrored.retired" = e5;
  "testing.iconErrored" = e5;
  "statusBarItem.errorHoverForeground" = e5;
  "statusBarItem.errorForeground" = e5;
  "statusBar.offlineForeground" = e5;
  "statusBar.noFolderForeground" = e5;
  "problemsErrorIcon.foreground" = e5;
  "notificationsErrorIcon.foreground" = e5;
  "notebookStatusErrorIcon.foreground" = e5;
  "listFilterWidget.noMatchesOutline" = e5;
  "list.invalidItemForeground" = e5;
  "list.errorForeground" = e5;
  "inputValidation.errorForeground" = e5;
  "inputValidation.errorBorder" = e5;
  "errorForeground" = e5;
  "editorUnnecessaryCode.border" = e5;
  "editorUnnecessaryCode.opacity" = e5;
  "editorOverviewRuler.errorForeground" = e5;
  "editorGroup.focusedEmptyBorder" = e5;
  "editorError.foreground" = e5;
  "editorBracketHighlight.unexpectedBracket.foreground" = e5;
  "debugTokenExpression.error" = e5;
  "debugConsole.errorForeground" = e5;
  "activityErrorBadge.foreground" = e5;

  "testing.message.error.lineBackground" = e1;
  "testing.message.error.badgeBackground" = e1;
  "terminalCommandDecoration.errorBackground" = e1;
  "statusBarItem.errorHoverBackground" = e1;
  "statusBarItem.errorBackground" = e1;
  "minimap.errorHighlight" = e1;
  "inputValidation.errorBackground" = e1;
  "editorMarkerNavigationError.headerBackground" = e1;
  "editorMarkerNavigationError.background" = e1;
  "editorGroupHeader.noTabsBackground" = e1;
  "editorGroup.emptyBackground" = e1;
  "editorError.border" = e1;
  "editorError.background" = e1;
  "activityErrorBadge.background" = e1;

  "terminalOverviewRuler.cursorForeground" = c5;
  "terminalCursor.foreground" = c5;
  "editorMultiCursor.secondary.foreground" = c5;
  "editorMultiCursor.primary.foreground" = c5;
  "editorCursor.foreground" = c5;

  "terminalCursor.background" = c1;
  "editorMultiCursor.secondary.background" = c1;
  "editorMultiCursor.primary.background" = c1;
  "editorCursor.background" = c1;
}
