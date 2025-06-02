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
    "sound" = sound;
    "announcement" = announcement;
  };
  "accessibility.signals.terminalCommandSucceeded" = {
    "sound" = sound;
    "announcement" = announcement;
  };
  "accessibility.signals.terminalCommandFailed" = {
    "sound" = sound;
    "announcement" = announcement;
  };
  "accessibility.signals.terminalBell" = {
    "sound" = sound;
    "announcement" = announcement;
  };
  "accessibility.signals.taskFailed" = {
    "sound" = sound;
    "announcement" = announcement;
  };
  "accessibility.signals.taskCompleted" = {
    "sound" = sound;
    "announcement" = announcement;
  };
  "accessibility.signals.save" = {
    "sound" = "never";
    "announcement" = "never";
  };
  "accessibility.signals.progress" = {
    "sound" = sound;
    "announcement" = announcement;
  };
  "accessibility.signals.positionHasWarning" = {
    "sound" = sound;
    "announcement" = announcement;
  };
  "accessibility.signals.positionHasError" = {
    "sound" = sound;
    "announcement" = announcement;
  };
  "accessibility.signals.nextEditSuggestion" = {
    "sound" = sound;
    "announcement" = announcement;
  };
  "accessibility.signals.onDebugBreak" = {
    "sound" = sound;
    "announcement" = announcement;
  };
  "accessibility.signals.notebookCellFailed" = {
    "sound" = sound;
    "announcement" = announcement;
  };
  "accessibility.signals.notebookCellCompleted" = {
    "sound" = sound;
    "announcement" = announcement;
  };
  "accessibility.signals.noInlayHints" = {
    "sound" = sound;
    "announcement" = announcement;
  };
  "accessibility.signals.lineHasWarning" = {
    "sound" = sound;
    "announcement" = announcement;
  };
  "accessibility.signals.lineHasInlineSuggestion" = {
    "sound" = sound;
  };
  "accessibility.signals.lineHasFoldedArea" = {
    "sound" = sound;
    "announcement" = announcement;
  };
  "accessibility.signals.lineHasError" = {
    "sound" = sound;
    "announcement" = announcement;
  };
  "accessibility.signals.lineHasBreakpoint" = {
    "sound" = sound;
    "announcement" = announcement;
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
    "sound" = sound;
    "announcement" = announcement;
  };
  "accessibility.signals.chatResponseReceived" = {
    "sound" = sound;
  };
  "accessibility.signals.chatRequestSent" = {
    "sound" = sound;
    "announcement" = announcement;
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
