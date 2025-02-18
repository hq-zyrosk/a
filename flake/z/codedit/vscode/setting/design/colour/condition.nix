let
  w5 = _.rgba 1.00 1.00 0.00 1.00;
  w1 = _.rgba 1.00 1.00 0.00 0.50;
  i5 = _.rgba 0.00 1.00 0.00 1.00;
  i1 = _.rgba 0.00 1.00 0.00 0.50;
  e5 = _.rgba 1.00 0.00 0.00 1.00;
  e1 = _.rgba 1.00 0.00 0.00 0.50;
  c5 = _.rgba 1.00 0.00 0.00 1.00;
  c1 = _.rgba 0.00 0.00 0.00 0.00;
  _ = import ./_.nix;
in
{
  "statusBarItem.warningHoverForeground" = w5;
  "statusBarItem.warningHoverBackground" = w5;
  "statusBarItem.warningForeground" = w5;
  "statusBarItem.warningBackground" = w5;
  "problemsWarningIcon.foreground" = w5;
  "notificationsWarningIcon.foreground" = w5;
  "minimap.warningHighlight" = w1;
  "list.warningForeground" = w5;
  "inputValidation.warningForeground" = w5;
  "inputValidation.warningBorder" = w5;
  "inputValidation.warningBackground" = w5;
  "editorWarning.foreground" = w5;
  "editorWarning.border" = w5;
  "editorWarning.background" = w1;
  "editorOverviewRuler.warningForeground" = w5;
  "editorMarkerNavigationWarning.headerBackground" = w5;
  "editorMarkerNavigationWarning.background" = w5;
  "debugConsole.warningForeground" = w5;
  "activityWarningBadge.foreground" = w5;
  "activityWarningBadge.background" = w5;

  "testing.message.info.lineBackground" = i1;
  "testing.message.info.decorationForeground" = i5;
  "search.resultsInfoForeground" = i5;
  "problemsInfoIcon.foreground" = i5;
  "notificationsInfoIcon.foreground" = i5;
  "minimap.infoHighlight" = i5;
  "inputValidation.infoForeground" = i5;
  "inputValidation.infoBorder" = i5;
  "inputValidation.infoBackground" = i1;
  "editorOverviewRuler.infoForeground" = i5;
  "editorMarkerNavigationInfo.headerBackground" = i1;
  "editorMarkerNavigationInfo.background" = i1;
  "editorInfo.foreground" = i5;
  "editorInfo.border" = i5;
  "editorInfo.background" = i1;
  "debugConsole.infoForeground" = i5;

  "testing.message.error.lineBackground" = e5;
  "testing.message.error.decorationForeground" = e5;
  "testing.message.error.badgeForeground" = e5;
  "testing.message.error.badgeBorder" = e5;
  "testing.message.error.badgeBackground" = e5;
  "testing.iconErrored.retired" = e5;
  "testing.iconErrored" = e5;
  "terminalCommandDecoration.errorBackground" = e5;
  "statusBarItem.errorHoverForeground" = e5;
  "statusBarItem.errorHoverBackground" = e5;
  "statusBarItem.errorForeground" = e5;
  "statusBarItem.errorBackground" = e5;
  "problemsErrorIcon.foreground" = e5;
  "notificationsErrorIcon.foreground" = e5;
  "notebookStatusErrorIcon.foreground" = e5;
  "minimap.errorHighlight" = e5;
  "list.errorForeground" = e5;
  "inputValidation.errorForeground" = e5;
  "inputValidation.errorBorder" = e5;
  "inputValidation.errorBackground" = e5;
  "errorForeground" = e5;
  "editorOverviewRuler.errorForeground" = e5;
  "editorMarkerNavigationError.headerBackground" = e5;
  "editorMarkerNavigationError.background" = e5;
  "editorError.foreground" = e5;
  "editorError.border" = e5;
  "editorError.background" = e1;
  "debugTokenExpression.error" = e5;
  "debugConsole.errorForeground" = e5;
  "activityErrorBadge.foreground" = e5;
  "activityErrorBadge.background" = e5;

  "terminalOverviewRuler.cursorForeground" = c5;
  "terminalCursor.foreground" = c5;
  "terminalCursor.background" = c1;
  "editorMultiCursor.secondary.foreground" = c5;
  "editorMultiCursor.secondary.background" = c1;
  "editorMultiCursor.primary.foreground" = c5;
  "editorMultiCursor.primary.background" = c1;
  "editorCursor.foreground" = c5;
  "editorCursor.background" = c1;
}
