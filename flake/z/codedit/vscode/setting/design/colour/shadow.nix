let
  c5 = _.rgba 0.50000 0.50000 0.50000 0.50000;
  _ = import ./_.nix;
in {
  "widget.shadow" = c5;
  "sideBarStickyScroll.shadow" = c5;
  "scrollbar.shadow" = c5;
  "panelStickyScroll.shadow" = c5;
  "minimap.foregroundOpacity" = c5;
  "listFilterWidget.shadow" = c5;
  "inlineChat.shadow" = c5;
  "editorStickyScroll.shadow" = c5;
  "diffEditor.unchangedRegionShadow" = c5;
}
