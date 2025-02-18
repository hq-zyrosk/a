let
  r = _.rgba 1 0 0 1;
  _ = import ./_.nix;
in
{
  "testing.message.error.lineBackground" = r;
  "testing.message.error.decorationForeground" = r;
  "testing.message.error.badgeForeground" = r;
  "testing.message.error.badgeBorder" = r;
  "testing.message.error.badgeBackground" = r;
  "testing.iconErrored.retired" = r;
  "testing.iconErrored" = r;
  "terminalCommandDecoration.errorBackground" = r;
  "statusBarItem.errorHoverForeground" = r;
  "statusBarItem.errorHoverBackground" = r;
  "statusBarItem.errorForeground" = r;
  "statusBarItem.errorBackground" = r;
  "problemsErrorIcon.foreground" = r;
  "notificationsErrorIcon.foreground" = r;
  "notebookStatusErrorIcon.foreground" = r;
  "minimap.errorHighlight" = r;
  "list.errorForeground" = r;
  "inputValidation.errorForeground" = r;
  "inputValidation.errorBorder" = r;
  "inputValidation.errorBackground" = r;
  "errorForeground" = r;
  "editorOverviewRuler.errorForeground" = r;
  "editorMarkerNavigationError.headerBackground" = r;
  "editorMarkerNavigationError.background" = r;
  "editorError.foreground" = r;
  "editorError.border" = r;
  "editorError.background" = r;
  "debugTokenExpression.error" = r;
  "debugConsole.errorForeground" = r;
  "activityErrorBadge.foreground" = r;
  "activityErrorBadge.background" = r;
}
