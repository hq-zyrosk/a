let
  c5 = _.rgba 1.00000 1.00000 1.00000 0.06250;
  _ = import ./_.nix;
in {
  "widget.shadow" = c5;
  "sideBarStickyScroll.shadow" = c5;
  "scrollbar.shadow" = c5;
  "panelStickyScroll.shadow" = c5;
  "listFilterWidget.shadow" = c5;
  "inlineChat.shadow" = c5;
  "editorStickyScroll.shadow" = c5;
  "diffEditor.unchangedRegionShadow" = c5;
}
