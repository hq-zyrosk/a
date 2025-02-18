let
  e5 = _.rgba 1.00 0.00 0.00 1.00;
  e1 = _.rgba 1.00 0.00 0.00 0.50;
  c5 = _.rgba 1.00 0.00 0.00 1.00;
  c1 = _.rgba 0.00 0.00 0.00 0.00;
  _ = import ./_.nix;
in
{
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
