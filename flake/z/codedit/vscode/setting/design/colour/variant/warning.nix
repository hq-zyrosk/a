let
  c9 = _.rgba 0.00000 0.00000 1.00000 1.00000;
  c5 = _.rgba 0.00000 0.00000 0.50000 1.00000;
  c1 = _.rgba 0.00000 0.00000 0.25000 1.00000;
  _ = import ./../_.nix;
in {
  "statusBarItem.warningHoverForeground" = c9;
  "statusBarItem.warningForeground" = c9;
  "problemsWarningIcon.foreground" = c9;
  "notificationsWarningIcon.foreground" = c9;
  "list.warningForeground" = c9;
  "inputValidation.warningForeground" = c9;
  "gauge.warningForeground" = c9;
  "editorWarning.foreground" = c9;
  "editorOverviewRuler.warningForeground" = c9;
  "debugConsole.warningForeground" = c9;
  "activityWarningBadge.foreground" = c9;

  "statusBarItem.warningHoverBackground" = c5;
  "statusBarItem.warningBackground" = c5;
  "minimap.warningHighlight" = c5;
  "inputValidation.warningBackground" = c5;
  "gauge.warningBackground" = c5;
  "editorMarkerNavigationWarning.headerBackground" = c5;
  "editorMarkerNavigationWarning.background" = c5;
  "activityWarningBadge.background" = c5;

  "inputValidation.warningBorder" = c1;
  "editorWarning.border" = c1;
}
