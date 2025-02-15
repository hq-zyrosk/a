let
  foreground = _.rgba 1 1 1 1; # "#3C3C3CFF";
  _ = import ./_.nix;
in
{
  "scmGraph.foreground1" = foreground;
  "editorBracketPairGuide.activeBackground1" = foreground;
  "editorIndentGuide.activeBackground1" = foreground;
  "scmGraph.foreground2" = foreground;
  "editorBracketPairGuide.activeBackground2" = foreground;
  "editorIndentGuide.activeBackground2" = foreground;
  "scmGraph.foreground3" = foreground;
  "editorBracketPairGuide.activeBackground3" = foreground;
  "editorIndentGuide.activeBackground3" = foreground;
  "scmGraph.foreground4" = foreground;
  "editorBracketPairGuide.activeBackground4" = foreground;
  "editorIndentGuide.activeBackground4" = foreground;
  "scmGraph.foreground5" = foreground;
  "editorBracketPairGuide.activeBackground5" = foreground;
  "editorIndentGuide.activeBackground5" = foreground;
  "editorBracketPairGuide.activeBackground6" = foreground;
  "editorIndentGuide.activeBackground6" = foreground;
  "testing.iconFailed" = foreground;
  "testing.iconSkipped" = foreground;
  "testing.iconErrored" = foreground;
  "testing.iconPassed" = foreground;
  "testing.iconQueued" = foreground;
  "debugIcon.breakpointUnverifiedForeground" = foreground;
  "debugIcon.breakpointDisabledForeground" = foreground;
  "editorLineNumber.dimmedForeground" = foreground;
  "tab.selectedForeground" = foreground;
  "symbolIcon.fieldForeground" = foreground;
  "chat.slashCommandForeground" = foreground;
  "symbolIcon.methodForeground" = foreground;
  "symbolIcon.keywordForeground" = foreground;
  "symbolIcon.interfaceForeground" = foreground;
  "symbolIcon.namespaceForeground" = foreground;
  "symbolIcon.referenceForeground" = foreground;
  "debugConsole.sourceForeground" = foreground;
  "gitDecoration.addedResourceForeground" = foreground;
  "gitDecoration.renamedResourceForeground" = foreground;
  "gitDecoration.deletedResourceForeground" = foreground;
  "gitDecoration.submoduleResourceForeground" = foreground;
  "gitDecoration.conflictingResourceForeground" = foreground;
  "symbolIcon.packageForeground" = foreground;
  "testing.coverCountBadgeForeground" = foreground;
  "testing.message.error.badgeForeground" = foreground;
  "editorGutter.commentRangeForeground" = foreground;
  "symbolIcon.variableForeground" = foreground;
  "chat.editedFileForeground" = foreground;
  "symbolIcon.fileForeground" = foreground;
  "symbolIcon.moduleForeground" = foreground;
  "debugIcon.breakpointCurrentStackframeForeground" = foreground;
  "debugIcon.breakpointStackframeForeground" = foreground;
  "statusBarItem.offlineForeground" = foreground;
  "debugIcon.pauseForeground" = foreground;
  "statusBarItem.remoteForeground" = foreground;
  "debugIcon.continueForeground" = foreground;
  "tab.unfocusedActiveForeground" = foreground;
  "tab.activeForeground" = foreground;
  "radio.activeForeground" = foreground;
  "tab.unfocusedInactiveForeground" = foreground;
  "tab.inactiveForeground" = foreground;
  "panelTitle.inactiveForeground" = foreground;
  "radio.inactiveForeground" = foreground;
  "titleBar.inactiveForeground" = foreground;
  "commandCenter.inactiveForeground" = foreground;
  "statusBar.debuggingForeground" = foreground;
  "symbolIcon.stringForeground" = foreground;
  "editor.findMatchForeground" = foreground;
  "editorGutter.commentUnresolvedGlyphForeground" = foreground;
  "editorGutter.commentGlyphForeground" = foreground;
  "debugIcon.stepBackForeground" = foreground;
  "scmGraph.historyItemHoverLabelForeground" = foreground;
  "scm.historyGraph.historyItemGroupHoverLabelForeground" = foreground;
  "scmGraph.historyItemHoverDefaultLabelForeground" = foreground;
  "symbolIcon.nullForeground" = foreground;
  "editorGutter.foldingControlForeground" = foreground;
  "inlineEdit.gutterIndicator.successfulForeground" = foreground;
  "symbolIcon.booleanForeground" = foreground;
  "list.activeSelectionIconForeground" = foreground;
  "list.inactiveSelectionIconForeground" = foreground;
  "banner.iconForeground" = foreground;
  "diffEditor.unchangedRegionForeground" = foreground;
  "git.blame.editorDecorationForeground" = foreground;
  "list.activeSelectionForeground" = foreground;
  "list.inactiveSelectionForeground" = foreground;
  "terminal.selectionForeground" = foreground;
  "menubar.selectionForeground" = foreground;
  "symbolIcon.functionForeground" = foreground;
  "descriptionForeground" = foreground;
  "settings.dropdownForeground" = foreground;
  "debugIcon.stepIntoForeground" = foreground;
  "debugIcon.stopForeground" = foreground;
  "symbolIcon.enumeratorMemberForeground" = foreground;
  "symbolIcon.numberForeground" = foreground;
  "settings.headerForeground" = foreground;
  "symbolIcon.folderForeground" = foreground;
  "symbolIcon.typeParameterForeground" = foreground;
  "debugIcon.stepOverForeground" = foreground;
  "tab.unfocusedHoverForeground" = foreground;
  "statusBarItem.offlineHoverForeground" = foreground;
  "statusBarItem.remoteHoverForeground" = foreground;
  "statusBarItem.warningHoverForeground" = foreground;
  "settings.settingsHeaderHoverForeground" = foreground;
  "statusBarItem.errorHoverForeground" = foreground;
  "statusBarItem.prominentHoverForeground" = foreground;
  "tab.hoverForeground" = foreground;
  "statusBarItem.hoverForeground" = foreground;
  "list.hoverForeground" = foreground;
  "symbolIcon.colorForeground" = foreground;
  "symbolIcon.enumeratorForeground" = foreground;
  "symbolIcon.operatorForeground" = foreground;
  "symbolIcon.constructorForeground" = foreground;
  "scm.historyItemDeletionsForeground" = foreground;
  "scmGraph.historyItemHoverDeletionsForeground" = foreground;
  "scm.historyItemAdditionsForeground" = foreground;
  "scmGraph.historyItemHoverAdditionsForeground" = foreground;
  "symbolIcon.classForeground" = foreground;
  "ports.iconRunningProcessForeground" = foreground;
  "editorActionList.focusForeground" = foreground;
  "list.focusForeground" = foreground;
  "symbolIcon.objectForeground" = foreground;
  "debugIcon.disconnectForeground" = foreground;
  "symbolIcon.structForeground" = foreground;
  "symbolIcon.snippetForeground" = foreground;
  "list.focusHighlightForeground" = foreground;
  "list.highlightForeground" = foreground;
  "symbolIcon.unitForeground" = foreground;
  "symbolIcon.constantForeground" = foreground;
  "statusBarItem.prominentForeground" = foreground;
  "extensionButton.prominentForeground" = foreground;
  "symbolIcon.eventForeground" = foreground;
  "terminal.initialHintForeground" = foreground;
  "debugIcon.breakpointForeground" = foreground;
  "editorGroup.dropIntoPromptForeground" = foreground;
  "debugIcon.startForeground" = foreground;
  "debugIcon.restartForeground" = foreground;
  "debugIcon.stepOutForeground" = foreground;
  "settings.numberInputForeground" = foreground;
  "symbolIcon.textForeground" = foreground;
  "settings.checkboxForeground" = foreground;
  "symbolIcon.arrayForeground" = foreground;
  "symbolIcon.keyForeground" = foreground;
  "inlineEdit.gutterIndicator.secondaryForeground" = foreground;
  "inlineEdit.gutterIndicator.primaryForeground" = foreground;
  "symbolIcon.propertyForeground" = foreground;
  "foreground" = foreground;
  "breadcrumb.foreground" = foreground;
  "terminalCommandGuide.foreground" = foreground;
  "activityWarningBadge.foreground" = foreground;
  "activityErrorBadge.foreground" = foreground;
  "walkthrough.stepTitle.foreground" = foreground;
  "sideBarTitle.foreground" = foreground;
  "editorLightBulbAi.foreground" = foreground;
  "terminal.foreground" = foreground;
  "keybindingLabel.foreground" = foreground;
  "notebookStatusRunningIcon.foreground" = foreground;
  "problemsWarningIcon.foreground" = foreground;
  "notificationsWarningIcon.foreground" = foreground;
  "problemsInfoIcon.foreground" = foreground;
  "notificationsInfoIcon.foreground" = foreground;
  "problemsErrorIcon.foreground" = foreground;
  "notificationsErrorIcon.foreground" = foreground;
  "notebookStatusErrorIcon.foreground" = foreground;
  "notebookStatusSuccessIcon.foreground" = foreground;
  "debugConsoleInputIcon.foreground" = foreground;
  "icon.foreground" = foreground;
  "peekViewTitleDescription.foreground" = foreground;
  "dropdown.foreground" = foreground;
  "activityBarTop.foreground" = foreground;
  "pickerGroup.foreground" = foreground;
  "sideBar.foreground" = foreground;
  "statusBar.foreground" = foreground;
  "activityBar.foreground" = foreground;
  "panelSectionHeader.foreground" = foreground;
  "sideBarSectionHeader.foreground" = foreground;
  "notificationCenterHeader.foreground" = foreground;
  "banner.foreground" = foreground;
  "commandCenter.foreground" = foreground;
  "inlineEdit.indicator.foreground" = foreground;
  "editor.foreground" = foreground;
  "editorCodeLens.foreground" = foreground;
  "notifications.foreground" = foreground;
  "welcomePage.progress.foreground" = foreground;
  "charts.foreground" = foreground;
  "editorSuggestWidgetStatus.foreground" = foreground;
  "inlineChat.foreground" = foreground;
  "textPreformat.foreground" = foreground;
  "editorWidget.foreground" = foreground;
  "editorSuggestWidget.foreground" = foreground;
  "editorInlayHint.foreground" = foreground;
  "editorActionList.foreground" = foreground;
  "quickInput.foreground" = foreground;
  "menu.foreground" = foreground;
  "editorLightBulbAutoFix.foreground" = foreground;
  "checkbox.foreground" = foreground;
  "editorMultiCursor.secondary.foreground" = foreground;
  "editorMultiCursor.primary.foreground" = foreground;
  "editorGutter.addedBackground" = foreground;
  "editorGutter.modifiedBackground" = foreground;
  "tree.indentGuidesStroke" = foreground;
  "terminal.ansiBlack" = foreground;
  "terminal.ansiBrightBlack" = foreground;
  "testing.runAction" = foreground;
  "tab.unfocusedActiveModifiedBorder" = foreground;
  "tab.unfocusedInactiveModifiedBorder" = foreground;
  "tab.inactiveModifiedBorder" = foreground;
  "charts.lines" = foreground;
  "testing.iconUnset" = foreground;
}
