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
      "titleBar.activeForeground" = "#0000FFFF";
      "settings.textInputForeground" = "#0000FFFF";
      "quickInputList.focusIconForeground" = "#0000FFFF";
      "quickInputList.focusForeground" = "#0000FFFF";
      "profileBadge.foreground" = "#0000FFFF";
      "peekViewTitleLabel.foreground" = "#0000FFFF";
      "peekViewResult.selectionForeground" = "#0000FFFF";
      "peekViewResult.lineForeground" = "#0000FFFF";
      "peekViewResult.fileForeground" = "#0000FFFF";
      "panelTitle.activeForeground" = "#0000FFFF";
      "panelTitle.activeBorder" = "#0000FFFF";
      "menu.selectionForeground" = "#0000FFFF";
      "inputOption.activeForeground" = "#0000FFFF";
      "input.foreground" = "#0000FFFF";
      "gitDecoration.stageDeletedResourceForeground" = "#0000FFFF";
      "extensionButton.foreground" = "#0000FFFF";
      "extensionBadge.remoteForeground" = "#0000FFFF";
      "editorWarning.foreground" = "#0000FFFF";
      "editorSuggestWidget.selectedIconForeground" = "#0000FFFF";
      "editorSuggestWidget.selectedForeground" = "#0000FFFF";
      "editorLineNumber.activeForeground" = "#0000FFFF";
      "editorLightBulb.foreground" = "#0000FFFF";
      "editorHoverWidget.foreground" = "#0000FFFF";
      "editor.inlineValuesForeground" = "#0000FFFF";
      "debugView.stateLabelForeground" = "#0000FFFF";
      "debugView.exceptionLabelForeground" = "#0000FFFF";
      "commandCenter.activeForeground" = "#0000FFFF";
      "chat.avatarForeground" = "#0000FFFF";
      "button.secondaryForeground" = "#0000FFFF";
      "button.foreground" = "#0000FFFF";
      "breadcrumb.focusForeground" = "#0000FFFF";
      "breadcrumb.activeSelectionForeground" = "#0000FFFF";
      "badge.foreground" = "#0000FFFF";
      "activityBarBadge.foreground" = "#0000FFFF";

      "testing.message.error.decorationForeground" = "#FF0000FF";
      "terminalCursor.foreground" = "#FF0000FF";
      "statusBarItem.warningForeground" = "#FF0000FF";
      "statusBarItem.errorForeground" = "#FF0000FF";
      "statusBar.offlineForeground" = "#FF0000FF";
      "statusBar.noFolderForeground" = "#FF0000FF";
      "listFilterWidget.noMatchesOutline" = "#FF0000FF";
      "list.warningForeground" = "#FF0000FF";
      "list.invalidItemForeground" = "#FF0000FF";
      "list.errorForeground" = "#FF0000FF";
      "inputValidation.warningForeground" = "#FF0000FF";
      "inputValidation.errorForeground" = "#FF0000FF";
      "errorForeground" = "#FF0000FF";
      "editorUnnecessaryCode.border" = "#FF0000FF";
      "editorGroupHeader.noTabsBackground" = "#FF0000FF";
      "editorGroup.focusedEmptyBorder" = "#FF0000FF";
      "editorGroup.emptyBackground" = "#FF0000FF";
      "editorCursor.foreground" = "#FF0000FF";
      "diffEditorOverview.removedForeground" = "#FF0000FF";
      "debugConsole.warningForeground" = "#FF0000FF";
      "debugConsole.errorForeground" = "#FF0000FF";

      "editorError.background" = "#FF00003F";
      "editorWarning.background" = "#FF00003F";
      "diffEditor.removedTextBackground" = "#FF00003F";
      "terminalCommandDecoration.errorBackground" = "#FF00003F";
      "testing.message.error.lineBackground" = "#FF00003F";
      "diffEditor.removedLineBackground" = "#FF00003F";
      "diffEditorGutter.removedLineBackground" = "#FF00003F";
      "diffEditor.insertedLineBackground" = "#FF00003F";
      "editorGutter.deletedBackground" = "#FF00003F";
      "minimapGutter.deletedBackground" = "#FF00003F";
      "inlineChatDiff.removed" = "#FF00003F";

      # "textLink.foreground" = "#0000BFFF";
      # "notificationLink.foreground" = "#0000BFFF";
      # "inputValidation.infoForeground" = "#0000BFFF";
      # "debugConsole.infoForeground" = "#0000BFFF";
      # "search.resultsInfoForeground" = "#0000BFFF";
      # "testing.message.info.decorationForeground" = "#0000BFFF";

      # "editorLink.activeForeground" = "#00007FFF";
      # "textLink.activeForeground" = "#00007FFF";

      # "button.separator" = "#888888FF";
      # "extensionButton.separator" = "#888888FF";
      # "listFilterWidget.outline" = "#888888FF";
      # "list.focusOutline" = "#888888FF";
      # "list.inactiveFocusOutline" = "#888888FF";
      # "toolbar.hoverOutline" = "#888888FF";
      # "menu.separatorBackground" = "#888888FF";
      # "textSeparator.foreground" = "#888888FF";

      # "editorCommentsWidget.replyInputBackground" = "#F6F6F6FF";
      # "editorCommentsWidget.rangeBackground" = "#F6F6F6FF";
      # "editorGhostText.foreground" = "#F6F6F6FF";
      # "input.placeholderForeground" = "#F6F6F6FF";
      # "inlineChatInput.placeholderForeground" = "#F6F6F6FF";
      # "interactiveEditorInput.placeholderForeground" = "#F6F6F6FF";
      # "gitDecoration.ignoredResourceForeground" = "#F6F6F6FF";
      # "list.deemphasizedForeground" = "#F6F6F6FF";
      # "disabledForeground" = "#F6F6F6FF";

      # "tab.activeModifiedBorder" = "#003535FF";
      # "gitDecoration.modifiedResourceForeground" = "#003535FF";
      # "gitDecoration.stageModifiedResourceForeground" = "#003535FF";

      # "gitDecoration.untrackedResourceForeground" = "#002121FF";

      # "notebookScrollbarSlider.background" = "#D0D0D0FF";
      # "minimapSlider.background" = "#D0D0D0FF";
      # "progressBar.background" = "#D0D0D0FF";
      # "notebookScrollbarSlider.hoverBackground" = "#D0D0D0FF";
      # "minimapSlider.hoverBackground" = "#D0D0D0FF";
      # "notebookScrollbarSlider.activeBackground" = "#D0D0D0FF";
      # "minimapSlider.activeBackground" = "#D0D0D0FF";

      # "editorGhostText.background" = "#FFFF00FF";
      # "editorStickyScrollHover.background" = "#FFFF00FF";
      # "editorStickyScroll.background" = "#FFFF00FF";
      # "peekViewEditorStickyScroll.background" = "#FFFF00FF";
      # "editor.findMatchBackground" = "#FFFF00FF";
      # "searchEditor.findMatchBackground" = "#FFFF00FF";
      # "editor.linkedEditingBackground" = "#FFFF00FF";
      # "editorInlayHint.parameterForeground" = "#00FF00FF";
      # "diffEditorOverview.insertedForeground" = "#00FF00FF";
      # "inlineChatDiff.inserted" = "#00FF00FF";

      # "editorGhostText.border" = "#F7F700FF";
      # "editor.findMatchBorder" = "#F7F700FF";
      # "searchEditor.findMatchBorder" = "#F7F700FF";

      # "editorInlayHint.typeForeground" = "#5D0000FF";

      # "inlineEdit.originalChangedTextBackground" = "#FF00FF3F";
      # "inlineEdit.modifiedChangedTextBackground" = "#FF00FF3F";
      # "merge.currentContentBackground" = "#FF00FF3F";
      # "merge.commonContentBackground" = "#FF00FF3F";
      # "merge.incomingContentBackground" = "#FF00FF3F";
      # "merge.currentHeaderBackground" = "#FF00FF3F";
      # "merge.commonHeaderBackground" = "#FF00FF3F";
      # "merge.incomingHeaderBackground" = "#FF00FF3F";
      # "terminal.dropBackground" = "#FF00FF3F";
      # "inlineEdit.originalBackground" = "#FF00FF3F";
      # "terminal.findMatchBackground" = "#FF00FF3F";
      # "commandCenter.debuggingBackground" = "#FF00FF3F";
      # "inlineEdit.originalChangedLineBackground" = "#FF00FF3F";
      # "inlineEdit.modifiedChangedLineBackground" = "#FF00FF3F";
      # "inlineEdit.acceptedBackground" = "#FF00FF3F";
      # "inlineEdit.modifiedBackground" = "#FF00FF3F";

      # "editor.placeholder.foreground" = "#3C3C3C3F";

      # "editorWatermark.foreground" = "#3C3C3C3F";
      # "extensionIcon.sponsorForeground" = "#3C3C3C3F";
      # "editor.foldPlaceholderForeground" = "#3C3C3C3F";
      # "extensionIcon.starForeground" = "#3C3C3C3F";
      # "activityBar.inactiveForeground" = "#3C3C3C3F";
      # "activityBarTop.inactiveForeground" = "#3C3C3C3F";
      # "extensionIcon.preReleaseForeground" = "#3C3C3C3F";
      # "extensionIcon.verifiedForeground" = "#3C3C3C3F";

      # "minimap.foregroundOpacity" = "#F6F6F63F";

      # "editorInfo.background" = "#FFFF003F";
      # "list.filterMatchBackground" = "#FFFF003F";

      # "diffEditor.insertedTextBackground" = "#00FF003F";
      # "diffEditorGutter.insertedLineBackground" = "#00FF003F";
      # "minimapGutter.modifiedBackground" = "#00FF003F";
      # "minimapGutter.addedBackground" = "#00FF003F";

      # "list.filterMatchBorder" = "#F7F7003F";
      # "testing.message.info.lineBackground" = "#F7F7003F";

      # "editor.selectionForeground" = "#0000003F";

      # "selection.background" = "#00000029";
      # "editor.selectionBackground" = "#00000029";

      # "editorHint.foreground" = "#0000FF01";

      # "scrollbarSlider.background" = "#F6F6F680";
      # "scrollbarSlider.hoverBackground" = "#F6F6F680";
      # "scrollbarSlider.activeBackground" = "#F6F6F680";
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
