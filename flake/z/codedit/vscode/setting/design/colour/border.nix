let
  c9 = _.rgba 1.00000 1.00000 1.00000 0.50000;
  c5 = _.rgba 1.00000 1.00000 1.00000 0.25000;
  c1 = _.rgba 1.00000 1.00000 1.00000 0.12500;
  _ = import ./_.nix;
in
{
  "button.separator" = c9;
  "extensionButton.separator" = c9;
  "listFilterWidget.outline" = c9;
  "list.focusOutline" = c9;
  "list.inactiveFocusOutline" = c9;
  "toolbar.hoverOutline" = c9;
  "menu.separatorBackground" = c9;
  "textSeparator.foreground" = c9;

  "window.inactiveBorder" = c9;
  "window.activeBorder" = c9;
  "terminal.tab.activeBorder" = c9;
  "panelTitle.activeBorder" = c9;
  "interactive.activeCodeBorder" = c9;
  "inputOption.activeBorder" = c9;
  "editorCommentsWidget.rangeActiveBorder" = c9;
  "commandCenter.activeBorder" = c9;
  "activityBarTop.activeBorder" = c9;
  "activityBar.activeFocusBorder" = c9;
  "activityBar.activeBorder" = c9;

  "widget.border" = c5;
  "welcomePage.tileBorder" = c5;
  "tree.tableColumnsBorder" = c5;
  "tree.inactiveIndentGuidesStroke" = c5;
  "titleBar.border" = c5;
  "textBlockQuote.border" = c5;
  "testing.uncoveredBorder" = c5;
  "testing.peekBorder" = c5;
  "testing.messagePeekBorder" = c5;
  "testing.coveredBorder" = c5;
  "terminalStickyScroll.border" = c5;
  "terminal.border" = c5;
  "tab.selectedBorderTop" = c5;
  "tab.lastPinnedBorder" = c5;
  "tab.dragAndDropBorder" = c5;
  "tab.border" = c5;
  "statusBarItem.focusBorder" = c5;
  "statusBar.noFolderBorder" = c5;
  "statusBar.focusBorder" = c5;
  "statusBar.debuggingBorder" = c5;
  "sideBySideEditor.verticalBorder" = c5;
  "sideBySideEditor.horizontalBorder" = c5;
  "sideBarTitle.border" = c5;
  "sideBarStickyScroll.border" = c5;
  "sideBarSectionHeader.border" = c5;
  "sideBarSection.border" = c5;
  "sideBarActivityBarTop.border" = c5;
  "sideBar.border" = c5;
  "settings.textInputBorder" = c5;
  "settings.sashBorder" = c5;
  "settings.numberInputBorder" = c5;
  "settings.headerBorder" = c5;
  "settings.focusedRowBorder" = c5;
  "settings.dropdownListBorder" = c5;
  "settings.dropdownBorder" = c5;
  "settings.checkboxBorder" = c5;
  "searchEditor.textInputBorder" = c5;
  "scm.providerBorder" = c5;
  "scm.historyItemStatisticsBorder" = c5;
  "scm.historyItemSelectedStatisticsBorder" = c5;
  "sash.hoverBorder" = c5;
  "profiles.sashBorder" = c5;
  "pickerGroup.border" = c5;
  "peekView.border" = c5;
  "panelTitle.border" = c5;
  "panelStickyScroll.border" = c5;
  "panelSectionHeader.border" = c5;
  "panelSection.border" = c5;
  "panelInput.border" = c5;
  "panel.dropBorder" = c5;
  "notifications.border" = c5;
  "notificationToast.border" = c5;
  "notificationCenter.border" = c5;
  "notebook.selectedCellBorder" = c5;
  "notebook.focusedCellBorder" = c5;
  "notebook.cellBorderColor" = c5;
  "multiDiffEditor.border" = c5;
  "mergeEditor.conflict.unhandledUnfocused.border" = c5;
  "mergeEditor.conflict.unhandledFocused.border" = c5;
  "mergeEditor.conflict.handledUnfocused.border" = c5;
  "mergeEditor.conflict.handledFocused.border" = c5;
  "merge.border" = c5;
  "menubar.selectionBorder" = c5;
  "menu.selectionBorder" = c5;
  "menu.border" = c5;
  "keybindingLabel.bottomBorder" = c5;
  "keybindingLabel.border" = c5;
  "interactiveEditorInput.focusBorder" = c5;
  "interactiveEditorInput.border" = c5;
  "interactiveEditor.border" = c5;
  "interactive.inactiveCodeBorder" = c5;
  "input.border" = c5;
  "inlineEdit.tabWillAcceptBorder" = c5;
  "inlineChatInput.focusBorder" = c5;
  "inlineChatInput.border" = c5;
  "inlineChat.border" = c5;
  "focusBorder" = c5;
  "editorWidget.resizeBorder" = c5;
  "editorWidget.border" = c5;
  "editorWhitespace.foreground" = c5;
  "editorSuggestWidget.border" = c5;
  "editorStickyScroll.border" = c5;
  "editorRuler.foreground" = c5;
  "editorLineNumber.foreground" = c5;
  "editorHoverWidget.border" = c5;
  "editorHint.border" = c5;
  "editorGroupHeader.border" = c5;
  "editorGroup.border" = c5;
  "dropdown.border" = c5;
  "diffEditor.move.border" = c5;
  "diffEditor.border" = c5;
  "debugToolBar.border" = c5;
  "debugExceptionWidget.border" = c5;
  "commandCenter.inactiveBorder" = c5;
  "commandCenter.border" = c5;
  "checkbox.selectBorder" = c5;
  "checkbox.border" = c5;
  "chat.requestBorder" = c5;
  "button.border" = c5;
  "bookmarks.lineBorder" = c5;
  "activityBarTop.dropBorder" = c5;
  "activityBar.dropBorder" = c5;
  "activityBar.border" = c5;

  "editorBracketHighlight.foreground6" = c1;
  "editorBracketHighlight.foreground5" = c1;
  "editorBracketHighlight.foreground4" = c1;
  "editorBracketHighlight.foreground3" = c1;
  "editorBracketHighlight.foreground2" = c1;
  "editorBracketHighlight.foreground1" = c1;
  "editorGhostText.border" = c1;
}
