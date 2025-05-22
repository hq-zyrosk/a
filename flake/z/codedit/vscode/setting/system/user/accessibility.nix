let
  sound = "off";
  announcement = "off";
in {
  "accessibility.signals.voiceRecordingStopped" = {
    "sound" = sound;
  };
  "accessibility.signals.voiceRecordingStarted" = {
    "sound" = "on";
  };
  "accessibility.signals.terminalQuickFix" = {
    "announcement" = announcement;
    "sound" = sound;
  };
  "accessibility.signals.terminalCommandSucceeded" = {
    "announcement" = announcement;
    "sound" = sound;
  };
  "accessibility.signals.terminalCommandFailed" = {
    "announcement" = announcement;
    "sound" = sound;
  };
  "accessibility.signals.terminalBell" = {
    "announcement" = announcement;
    "sound" = sound;
  };
  "accessibility.signals.taskFailed" = {
    "announcement" = announcement;
    "sound" = sound;
  };
  "accessibility.signals.taskCompleted" = {
    "announcement" = announcement;
    "sound" = sound;
  };
  "accessibility.signals.save" = {
    "announcement" = "never";
    "sound" = "never";
  };
  "accessibility.signals.progress" = {
    "announcement" = announcement;
    "sound" = sound;
  };
  "accessibility.signals.positionHasWarning" = {
    "announcement" = announcement;
    "sound" = sound;
  };
  "accessibility.signals.positionHasError" = {
    "announcement" = announcement;
    "sound" = sound;
  };
  "accessibility.signals.nextEditSuggestion" = {
    "announcement" = announcement;
    "sound" = sound;
  };
  "accessibility.signals.onDebugBreak" = {
    "announcement" = announcement;
    "sound" = sound;
  };
  "accessibility.signals.notebookCellFailed" = {
    "announcement" = announcement;
    "sound" = sound;
  };
  "accessibility.signals.notebookCellCompleted" = {
    "announcement" = announcement;
    "sound" = sound;
  };
  "accessibility.signals.noInlayHints" = {
    "announcement" = announcement;
    "sound" = sound;
  };
  "accessibility.signals.lineHasWarning" = {
    "announcement" = announcement;
    "sound" = sound;
  };
  "accessibility.signals.lineHasInlineSuggestion" = {
    "sound" = sound;
  };
  "accessibility.signals.lineHasFoldedArea" = {
    "announcement" = announcement;
    "sound" = sound;
  };
  "accessibility.signals.lineHasError" = {
    "announcement" = announcement;
    "sound" = sound;
  };
  "accessibility.signals.lineHasBreakpoint" = {
    "announcement" = announcement;
    "sound" = sound;
  };
  "accessibility.signals.format" = {
    "announcement" = "never";
    "sound" = "never";
  };
  "accessibility.signals.editsUndone" = {
    "sound" = sound;
    "announcement" = announcement;
  };
  "accessibility.signals.editsKept" = {
    "sound" = sound;
    "announcement" = announcement;
  };
  "accessibility.signals.diffLineModified" = {
    "sound" = sound;
  };
  "accessibility.signals.diffLineInserted" = {
    "sound" = sound;
  };
  "accessibility.signals.diffLineDeleted" = {
    "sound" = sound;
  };
  "accessibility.signals.codeActionTriggered" = {
    "sound" = sound;
  };
  "accessibility.signals.codeActionApplied" = {
    "sound" = sound;
  };
  "accessibility.signals.clear" = {
    "announcement" = announcement;
    "sound" = sound;
  };
  "accessibility.signals.chatUserActionRequired" = {
    "sound" = "off";
    "announcement" = "off";
  };
  "accessibility.signals.chatResponseReceived" = {
    "sound" = sound;
  };
  "accessibility.signals.chatRequestSent" = {
    "announcement" = announcement;
    "sound" = sound;
  };
  "accessibility.signals.chatEditModifiedFile" = {
    "sound" = sound;
  };
  "accessibility.signalOptions.experimental.delays.warningAtPosition" = {};
  "accessibility.signalOptions.experimental.delays.general" = {};
  "accessibility.signalOptions.experimental.delays.errorAtPosition" = {};
  "accessibility.verbosity.walkthrough" = true;
  "accessibility.verbosity.terminal" = true;
  "accessibility.verbosity.sourceControl" = true;
  "accessibility.verbosity.replEditor" = true;
  "accessibility.verbosity.panelChat" = true;
  "accessibility.verbosity.notification" = true;
  "accessibility.verbosity.notebook" = true;
  "accessibility.verbosity.keybindingsEditor" = true;
  "accessibility.verbosity.inlineCompletions" = true;
  "accessibility.verbosity.inlineChat" = true;
  "accessibility.verbosity.hover" = true;
  "accessibility.verbosity.emptyEditorHint" = true;
  "accessibility.verbosity.diffEditorActive" = true;
  "accessibility.verbosity.diffEditor" = true;
  "accessibility.verbosity.debug" = true;
  "accessibility.verbosity.comments" = true;
  "accessibility.signalOptions.volume" = 75;
  "accessibility.signalOptions.debouncePositionChanges" = false;
  "accessibility.replEditor.readLastExecutionOutput" = true;
  "accessibility.replEditor.autoFocusReplExecution" = "input";
  "accessibility.debugWatchVariableAnnouncements" = true;
  "accessibility.windowTitleOptimized" = true;
  "accessibility.underlineLinks" = true;
  "accessibility.hideAccessibleView" = false;
  "accessibility.dimUnfocused.opacity" = 1;
  "accessibility.dimUnfocused.enabled" = false;
  "accessibility.accessibleView.closeOnKeyPress" = true;
}
