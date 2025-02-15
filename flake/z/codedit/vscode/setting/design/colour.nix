let
  unknown = import ./colour/unknown.nix;
  shadow = import ./colour/shadow.nix;
  rgb = import ./colour/rgb.nix;
  highlight = import ./colour/highlight.nix;
  hidden = import ./colour/hidden.nix;
  foreground = import ./colour/foreground.nix;
  border = import ./colour/border.nix;
  background = import ./colour/background.nix;
in
{
  "workbench.colorCustomizations" =
    unknown
    // shadow
    // rgb
    // highlight
    // hidden
    // foreground
    // border
    // background
    // {
      "panelTitle.activeForeground" = "#0000FFFF";
      "panelTitle.activeBorder" = "#0000FFFF";
      # "toolbar.hoverOutline" = "#888888FF";
      # "titleBar.activeForeground" = "#0000FFFF";
      # "textSeparator.foreground" = "#888888FF";
      # "textLink.foreground" = "#0000BFFF";
      # "textLink.activeForeground" = "#00007FFF";
      # "testing.message.info.lineBackground" = "#F7F7003F";
      # "testing.message.info.decorationForeground" = "#0000BFFF";
      # "testing.message.error.lineBackground" = "#FF00003F";
      # "testing.message.error.decorationForeground" = "#FF0000FF";
      # "terminalCursor.foreground" = "#FF0000FF";
      # "terminalCommandDecoration.errorBackground" = "#FF00003F";
      # "terminal.findMatchBackground" = "#FF00FF3F";
      # "terminal.dropBackground" = "#FF00FF3F";
      # "tab.activeModifiedBorder" = "#003535FF";
      # "statusBarItem.warningForeground" = "#FF0000FF";
      # "statusBarItem.errorForeground" = "#FF0000FF";
      # "statusBar.offlineForeground" = "#FF0000FF";
      # "statusBar.noFolderForeground" = "#FF0000FF";
      # "settings.textInputForeground" = "#0000FFFF";
      # "selection.background" = "#00000029";
      # "searchEditor.findMatchBorder" = "#F7F700FF";
      # "searchEditor.findMatchBackground" = "#FFFF00FF";
      # "search.resultsInfoForeground" = "#0000BFFF";
      # "scrollbarSlider.hoverBackground" = "#F6F6F680";
      # "scrollbarSlider.background" = "#F6F6F680";
      # "scrollbarSlider.activeBackground" = "#F6F6F680";
      # "quickInputList.focusIconForeground" = "#0000FFFF";
      # "quickInputList.focusForeground" = "#0000FFFF";
      # "progressBar.background" = "#D0D0D0FF";
      # "profileBadge.foreground" = "#0000FFFF";
      # "peekViewTitleLabel.foreground" = "#0000FFFF";
      # "peekViewResult.selectionForeground" = "#0000FFFF";
      # "peekViewResult.lineForeground" = "#0000FFFF";
      # "peekViewResult.fileForeground" = "#0000FFFF";
      # "peekViewEditorStickyScroll.background" = "#FFFF00FF";
      # "notificationLink.foreground" = "#0000BFFF";
      # "notebookScrollbarSlider.hoverBackground" = "#D0D0D0FF";
      # "notebookScrollbarSlider.background" = "#D0D0D0FF";
      # "notebookScrollbarSlider.activeBackground" = "#D0D0D0FF";
      # "minimapSlider.hoverBackground" = "#D0D0D0FF";
      # "minimapSlider.background" = "#D0D0D0FF";
      # "minimapSlider.activeBackground" = "#D0D0D0FF";
      # "minimapGutter.modifiedBackground" = "#00FF003F";
      # "minimapGutter.deletedBackground" = "#FF00003F";
      # "minimapGutter.addedBackground" = "#00FF003F";
      # "minimap.foregroundOpacity" = "#F6F6F63F";
      # "merge.incomingHeaderBackground" = "#FF00FF3F";
      # "merge.incomingContentBackground" = "#FF00FF3F";
      # "merge.currentHeaderBackground" = "#FF00FF3F";
      # "merge.currentContentBackground" = "#FF00FF3F";
      # "merge.commonHeaderBackground" = "#FF00FF3F";
      # "merge.commonContentBackground" = "#FF00FF3F";
      # "menu.separatorBackground" = "#888888FF";
      # "menu.selectionForeground" = "#0000FFFF";
      # "listFilterWidget.outline" = "#888888FF";
      # "listFilterWidget.noMatchesOutline" = "#FF0000FF";
      # "list.warningForeground" = "#FF0000FF";
      # "list.invalidItemForeground" = "#FF0000FF";
      # "list.inactiveFocusOutline" = "#888888FF";
      # "list.focusOutline" = "#888888FF";
      # "list.filterMatchBorder" = "#F7F7003F";
      # "list.filterMatchBackground" = "#FFFF003F";
      # "list.errorForeground" = "#FF0000FF";
      # "list.deemphasizedForeground" = "#F6F6F6FF";
      # "interactiveEditorInput.placeholderForeground" = "#F6F6F6FF";
      # "inputValidation.warningForeground" = "#FF0000FF";
      # "inputValidation.infoForeground" = "#0000BFFF";
      # "inputValidation.errorForeground" = "#FF0000FF";
      # "inputOption.activeForeground" = "#0000FFFF";
      # "input.placeholderForeground" = "#F6F6F6FF";
      # "input.foreground" = "#0000FFFF";
      # "inlineEdit.originalChangedTextBackground" = "#FF00FF3F";
      # "inlineEdit.originalChangedLineBackground" = "#FF00FF3F";
      # "inlineEdit.originalBackground" = "#FF00FF3F";
      # "inlineEdit.modifiedChangedTextBackground" = "#FF00FF3F";
      # "inlineEdit.modifiedChangedLineBackground" = "#FF00FF3F";
      # "inlineEdit.modifiedBackground" = "#FF00FF3F";
      # "inlineEdit.acceptedBackground" = "#FF00FF3F";
      # "inlineChatInput.placeholderForeground" = "#F6F6F6FF";
      # "inlineChatDiff.removed" = "#FF00003F";
      # "inlineChatDiff.inserted" = "#00FF00FF";
      # "gitDecoration.untrackedResourceForeground" = "#002121FF";
      # "gitDecoration.stageModifiedResourceForeground" = "#003535FF";
      # "gitDecoration.stageDeletedResourceForeground" = "#0000FFFF";
      # "gitDecoration.modifiedResourceForeground" = "#003535FF";
      # "gitDecoration.ignoredResourceForeground" = "#F6F6F6FF";
      # "extensionIcon.verifiedForeground" = "#3C3C3C3F";
      # "extensionIcon.starForeground" = "#3C3C3C3F";
      # "extensionIcon.sponsorForeground" = "#3C3C3C3F";
      # "extensionIcon.preReleaseForeground" = "#3C3C3C3F";
      # "extensionButton.separator" = "#888888FF";
      # "extensionButton.foreground" = "#0000FFFF";
      # "extensionBadge.remoteForeground" = "#0000FFFF";
      # "errorForeground" = "#FF0000FF";
      # "editorWatermark.foreground" = "#3C3C3C3F";
      # "editorWarning.foreground" = "#0000FFFF";
      # "editorWarning.background" = "#FF00003F";
      # "editorUnnecessaryCode.border" = "#FF0000FF";
      # "editorSuggestWidget.selectedIconForeground" = "#0000FFFF";
      # "editorSuggestWidget.selectedForeground" = "#0000FFFF";
      # "editorStickyScrollHover.background" = "#FFFF00FF";
      # "editorStickyScroll.background" = "#FFFF00FF";
      # "editorLink.activeForeground" = "#0000BFFF";
      # "editorLineNumber.activeForeground" = "#0000FFFF";
      # "editorLightBulb.foreground" = "#0000FFFF";
      # "editorInlayHint.typeForeground" = "#5D0000FF";
      # "editorInlayHint.parameterForeground" = "#00FF00FF";
      # "editorInfo.background" = "#FFFF003F";
      # "editorHoverWidget.foreground" = "#0000FFFF";
      # "editorHint.foreground" = "#0000FF01";
      # "editorGutter.deletedBackground" = "#FF00003F";
      # "editorGroupHeader.noTabsBackground" = "#FF0000FF";
      # "editorGroup.focusedEmptyBorder" = "#FF0000FF";
      # "editorGroup.emptyBackground" = "#FF0000FF";
      # "editorGhostText.foreground" = "#F6F6F6FF";
      # "editorGhostText.border" = "#F7F700FF";
      # "editorGhostText.background" = "#FFFF00FF";
      # "editorError.background" = "#FF00003F";
      # "editorCursor.foreground" = "#FF0000FF";
      # "editorCommentsWidget.replyInputBackground" = "#F6F6F6FF";
      # "editorCommentsWidget.rangeBackground" = "#F6F6F6FF";
      # "editor.selectionForeground" = "#0000003F";
      # "editor.selectionBackground" = "#00000029";
      # "editor.placeholder.foreground" = "#3C3C3C3F";
      # "editor.linkedEditingBackground" = "#FFFF00FF";
      # "editor.inlineValuesForeground" = "#0000FFFF";
      # "editor.foldPlaceholderForeground" = "#3C3C3C3F";
      # "editor.findMatchBorder" = "#F7F700FF";
      # "editor.findMatchBackground" = "#FFFF00FF";
      # "disabledForeground" = "#F6F6F6FF";
      # "diffEditorOverview.removedForeground" = "#FF0000FF";
      # "diffEditorOverview.insertedForeground" = "#00FF00FF";
      # "diffEditorGutter.removedLineBackground" = "#FF00003F";
      # "diffEditorGutter.insertedLineBackground" = "#00FF003F";
      # "diffEditor.removedTextBackground" = "#FF00003F";
      # "diffEditor.removedLineBackground" = "#FF00003F";
      # "diffEditor.insertedTextBackground" = "#00FF003F";
      # "diffEditor.insertedLineBackground" = "#FF00003F";
      # "debugView.stateLabelForeground" = "#0000FFFF";
      # "debugView.exceptionLabelForeground" = "#0000FFFF";
      # "debugConsole.warningForeground" = "#FF0000FF";
      # "debugConsole.infoForeground" = "#0000BFFF";
      # "debugConsole.errorForeground" = "#FF0000FF";
      # "commandCenter.debuggingBackground" = "#FF00FF3F";
      # "commandCenter.activeForeground" = "#0000FFFF";
      # "chat.avatarForeground" = "#0000FFFF";
      # "button.separator" = "#888888FF";
      # "button.secondaryForeground" = "#0000FFFF";
      # "button.foreground" = "#0000FFFF";
      # "breadcrumb.focusForeground" = "#0000FFFF";
      # "breadcrumb.activeSelectionForeground" = "#0000FFFF";
      # "badge.foreground" = "#0000FFFF";
      # "activityBarTop.inactiveForeground" = "#3C3C3C3F";
      # "activityBarBadge.foreground" = "#0000FFFF";
      # "activityBar.inactiveForeground" = "#3C3C3C3F";
    };
  "editor.tokenColorCustomizations" = { };
  "editor.semanticTokenColorCustomizations" = {
    "enabled" = true;
    "rules" = {
      "variable" = {
        "foreground" = "#004700FF";
      };
      "property" = {
        "foreground" = "#004700FF";
      };
      "parameter" = {
        "foreground" = "#004700FF";
      };
      "method" = {
        "foreground" = "#0000CFFF";
      };
      "function" = {
        "foreground" = "#0000CFFF";
      };
      "*.declaration" = {
        "fontStyle" = "bold";
      };
    };
  };
}
