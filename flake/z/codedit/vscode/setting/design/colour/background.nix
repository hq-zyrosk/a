let
  c9 = _.rgba 0.00000 0.00000 0.00000 1.00000;
  c5 = _.rgba 0.12500 0.12500 0.12500 1.00000;
  c1 = _.rgba 0.25000 0.25000 0.25000 1.00000;
  _ = import ./_.nix;
in {
  "walkThrough.embeddedEditorBackground" = c9;
  "terminal.background" = c9;
  "tab.unfocusedInactiveBackground" = c9;
  "tab.unfocusedHoverBackground" = c9;
  "tab.unfocusedActiveBackground" = c9;
  "tab.selectedBackground" = c9;
  "tab.inactiveBackground" = c9;
  "tab.hoverBackground" = c9;
  "tab.activeBackground" = c9;
  "sideBarTitle.background" = c9;
  "sideBarSectionHeader.background" = c9;
  "sideBar.background" = c9;
  "settings.textInputBackground" = c9;
  "radio.inactiveHoverBackground" = c9;
  "radio.activeBackground" = c9;
  "quickInputTitle.background" = c9;
  "quickInput.background" = c9;
  "prompt.frontMatter.background" = c9;
  "progressBar.background" = c9;
  "peekViewResult.background" = c9;
  "peekViewEditorGutter.background" = c9;
  "peekViewEditor.background" = c9;
  "panelTitleBadge.background" = c9;
  "panel.background" = c9;
  "outputView.background" = c9;
  "multiDiffEditor.headerBackground" = c9;
  "multiDiffEditor.background" = c9;
  "minimap.background" = c9;
  "listFilterWidget.background" = c9;
  "list.dropBetweenBackground" = c9;
  "keybindingTable.rowsBackground" = c9;
  "interactiveEditorInput.background" = c9;
  "input.background" = c9;
  "inlineChatInput.background" = c9;
  "editorWidget.background" = c9;
  "editorSuggestWidget.selectedBackground" = c9;
  "editorSuggestWidget.background" = c9;
  "editorHoverWidget.background" = c9;
  "editorGutter.itemBackground" = c9;
  "editorGutter.background" = c9;
  "editorGroupHeader.tabsBackground" = c9;
  "editorGroup.dropBackground" = c9;
  "editorGhostText.background" = c9;
  "editorCommentsWidget.rangeActiveBackground" = c9;
  "editor.background" = c9;
  "diffEditor.unchangedRegionBackground" = c9;
  "diffEditor.unchangedCodeBackground" = c9;
  "commandCenter.activeBackground" = c9;
  "chat.avatarBackground" = c9;
  "breadcrumbPicker.background" = c9;
  "breadcrumb.background" = c9;
  "activityBarTop.background" = c9;
  "activityBarTop.activeBackground" = c9;
  "activityBar.activeBackground" = c9;
  "actionBar.toggledBackground" = c9;

  "tree.tableOddRowsBackground" = c5;
  "toolbar.hoverBackground" = c5;
  "toolbar.activeBackground" = c5;
  "titleBar.inactiveBackground" = c5;
  "titleBar.activeBackground" = c5;
  "textCodeBlock.background" = c5;
  "textBlockQuote.background" = c5;
  "testing.peekHeaderBackground" = c5;
  "terminalStickyScroll.background" = c5;
  "statusBarItem.remoteBackground" = c5;
  "statusBarItem.prominentHoverBackground" = c5;
  "statusBarItem.prominentBackground" = c5;
  "statusBarItem.hoverBackground" = c5;
  "statusBarItem.compactHoverBackground" = c5;
  "statusBarItem.activeBackground" = c5;
  "statusBar.offlineBackground" = c5;
  "statusBar.noFolderBackground" = c5;
  "statusBar.debuggingBackground" = c5;
  "statusBar.background" = c5;
  "sideBarStickyScroll.background" = c5;
  "sideBar.dropBackground" = c5;
  "scrollbarSlider.background" = c9;
  "radio.inactiveBackground" = c5;
  "quickInputList.focusBackground" = c5;
  "prompt.frontMatter.inactiveBackground" = c5;
  "profileBadge.background" = c5;
  "peekViewTitle.background" = c5;
  "peekViewResult.selectionBackground" = c5;
  "peekViewEditorStickyScroll.background" = c5;
  "panelStickyScroll.background" = c5;
  "panelSectionHeader.background" = c5;
  "panelSection.dropBackground" = c5;
  "outputViewStickyScroll.background" = c5;
  "notifications.background" = c5;
  "notificationCenterHeader.background" = c5;
  "notebookScrollbarSlider.background" = c9;
  "notebook.cellStatusBarItemHoverBackground" = c5;
  "notebook.cellHoverBackground" = c5;
  "notebook.cellEditorBackground" = c5;
  "minimapSlider.background" = c9;
  "menubar.selectionBackground" = c5;
  "menu.selectionBackground" = c5;
  "menu.background" = c5;
  "list.dropBackground" = c5;
  "keybindingTable.headerBackground" = c5;
  "keybindingLabel.background" = c5;
  "inputOption.hoverBackground" = c5;
  "inputOption.activeBackground" = c5;
  "gauge.background" = "default";
  "extensionButton.prominentHoverBackground" = c5;
  "extensionButton.prominentBackground" = c5;
  "extensionButton.hoverBackground" = c5;
  "extensionButton.background" = c5;
  "extensionBadge.remoteBackground" = c5;
  "editorStickyScroll.background" = c5;
  "editorPane.background" = c5;
  "editorMarkerNavigation.background" = c5;
  "editorInlayHint.typeBackground" = c5;
  "editorInlayHint.parameterBackground" = c5;
  "editorInlayHint.background" = c5;
  "editorHoverWidget.statusBarBackground" = c5;
  "editor.linkedEditingBackground" = c5;
  "editor.inlineValuesBackground" = c5;
  "dropdown.listBackground" = c5;
  "dropdown.background" = c5;
  "debugView.stateLabelBackground" = c5;
  "debugView.exceptionLabelBackground" = c5;
  "debugToolBar.background" = c5;
  "debugExceptionWidget.background" = c5;
  "commandCenter.background" = c5;
  "checkbox.disabled.background" = c5;
  "chat.requestBackground" = c5;
  "button.secondaryHoverBackground" = c5;
  "button.secondaryBackground" = c5;
  "button.hoverBackground" = c5;
  "button.background" = c5;
  "bookmarks.lineBackground" = c5;
  "banner.background" = c5;
  "badge.background" = c5;
  "activityBarBadge.background" = c5;
  "activityBar.background" = c5;

  "terminalStickyScrollHover.background" = c1;
  "scrollbarSlider.hoverBackground" = c1;
  "scrollbarSlider.activeBackground" = c1;
  "notebookScrollbarSlider.hoverBackground" = c1;
  "notebookScrollbarSlider.activeBackground" = c1;
  "minimapSlider.hoverBackground" = c1;
  "minimapSlider.activeBackground" = c1;
  "editorStickyScrollHover.background" = c1;
}
