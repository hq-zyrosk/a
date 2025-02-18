let
  c5 = _.rgba 0.06250 0.06250 0.06250 1.00000;
  _ = import ./_.nix;
in
{
  "diffEditor.unchangedRegionShadow" = c5;
  "panelStickyScroll.shadow" = c5;
  "sideBarStickyScroll.shadow" = c5;
  "editorStickyScroll.shadow" = c5;
  "scrollbar.shadow" = c5;
  "inlineChat.shadow" = c5;
  "listFilterWidget.shadow" = c5;
  "widget.shadow" = c5;
}

# "minimap.foregroundOpacity" = "#F6F6F63F";
# "editorInlayHint.typeForeground" = "#5D0000FF";
# "editorInlayHint.parameterForeground" = "#00FF00FF";
# "editorCommentsWidget.replyInputBackground" = "#F6F6F6FF";
# "editorCommentsWidget.rangeBackground" = "#F6F6F6FF";
# "editor.linkedEditingBackground" = "#FFFF00FF";
