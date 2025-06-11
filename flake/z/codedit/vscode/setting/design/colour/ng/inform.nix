let
  c9 = _.rgba 0.00000 1.00000 0.00000 1.00000;
  c5 = _.rgba 0.00000 0.50000 0.00000 1.00000;
  c1 = _.rgba 0.00000 0.25000 0.00000 1.00000;
  _ = import ./../../_.nix;
in {
  "testing.message.info.decorationForeground" = c9;
  "search.resultsInfoForeground" = c9;
  "problemsInfoIcon.foreground" = c9;
  "notificationsInfoIcon.foreground" = c9;
  "minimap.infoHighlight" = c9;
  "inputValidation.infoForeground" = c9;
  "editorOverviewRuler.infoForeground" = c9;
  "editorLightBulbAutoFix.foreground" = c9;
  "editorLightBulbAi.foreground" = c9;
  "editorLightBulb.foreground" = c9;
  "editorInfo.foreground" = c9;
  "editorHint.foreground" = c9;
  "debugConsole.infoForeground" = c9;

  "testing.message.info.lineBackground" = c5;
  "inputValidation.infoBackground" = c5;
  "editorMarkerNavigationInfo.headerBackground" = c5;
  "editorMarkerNavigationInfo.background" = c5;
  "editorInfo.background" = c5;

  "inputValidation.infoBorder" = c1;
  "editorInfo.border" = c1;
}
