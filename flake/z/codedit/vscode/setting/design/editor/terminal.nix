let
  terminal = "wezterm";
in {
  "terminal.integrated.suggest.windowsExecutableExtensions" = {};
  "terminal.integrated.suggest.quickSuggestions" = {
    "arguments" = "on";
    "commands" = "on";
    "unknown" = "on";
  };
  "terminal.integrated.suggest.providers" = {
    "terminal-suggest" = true;
  };
  "terminal.integrated.profiles.windows" = {
    "" = {
      "source" = "PowerShell";
      "icon" = "terminal-powershell";
    };
  };
  "terminal.integrated.profiles.osx" = {
    "" = {
      "args" = [];
      "env" = {};
      "path" = "fish";
      "color" = "terminal.ansiWhite";
      "icon" = "array";
      "overrideName" = true;
    };
  };
  "terminal.integrated.profiles.linux" = {
    "" = {
      "args" = [];
      "env" = {};
      "path" = "fish";
      "color" = "terminal.ansiWhite";
      "icon" = "array";
      "overrideName" = true;
    };
  };
  "terminal.integrated.localEchoExcludePrograms" = ["nano"];
  "terminal.integrated.ignoreProcessNames" = [];
  "terminal.integrated.fontLigatures.fallbackLigatures" = [];
  "terminal.integrated.env.windows" = {};
  "terminal.integrated.env.osx" = {};
  "terminal.integrated.env.linux" = {};
  "terminal.integrated.commandsToSkipShell" = [];
  "terminal.integrated.autoReplies" = {};
  "terminal.integrated.allowedLinkSchemes" = [
    "vscode-insiders"
    "vscode"
    "mailto"
    "https"
    "http"
    "file"
  ];
  "terminal.sourceControlRepositoriesKind" = "integrated";
  "terminal.integrated.windowsUseConptyDll" = true;
  "terminal.integrated.windowsEnableConpty" = true;
  "terminal.integrated.useWslProfiles" = true;
  "terminal.integrated.unicodeVersion" = "11";
  "terminal.integrated.tabStopWidth" = 2;
  "terminal.integrated.tabs.title" = "\${process}";
  "terminal.integrated.tabs.showActiveTerminal" = "never";
  "terminal.integrated.tabs.showActions" = "never";
  "terminal.integrated.tabs.separator" = " - ";
  "terminal.integrated.tabs.location" = "right";
  "terminal.integrated.tabs.hideCondition" = "singleTerminal";
  "terminal.integrated.tabs.focusMode" = "singleClick";
  "terminal.integrated.tabs.enabled" = true;
  "terminal.integrated.tabs.enableAnimation" = false;
  "terminal.integrated.tabs.description" = "\${task}";
  "terminal.integrated.tabs.defaultIcon" = "array";
  "terminal.integrated.tabs.defaultColor" = "terminal.ansiWhite";
  "terminal.integrated.suggest.upArrowNavigatesHistory" = true;
  "terminal.integrated.suggest.suggestOnTriggerCharacters" = true;
  "terminal.integrated.suggest.showStatusBar" = true;
  "terminal.integrated.suggest.runOnEnter" = "ignore";
  "terminal.integrated.suggest.inlineSuggestion" = "alwaysOnTopExceptExactMatch";
  "terminal.integrated.suggest.enabled" = true;
  "terminal.integrated.suggest.cdPath" = "absolute";
  "terminal.integrated.splitCwd" = "inherited";
  "terminal.integrated.showLinkHover" = true;
  "terminal.integrated.showExitAlert" = true;
  "terminal.integrated.shellIntegration.showCommandGuide" = true;
  "terminal.integrated.shellIntegration.history" = 1000;
  "terminal.integrated.shellIntegration.environmentReporting" = false;
  "terminal.integrated.shellIntegration.enabled" = true;
  "terminal.integrated.shellIntegration.decorationsEnabled" = "never";
  "terminal.integrated.sendKeybindingsToShell" = false;
  "terminal.integrated.scrollback" = 1000;
  "terminal.integrated.rightClickBehavior" = "default";
  "terminal.integrated.rescaleOverlappingGlyphs" = false;
  "terminal.integrated.persistentSessionScrollback" = 1000;
  "terminal.integrated.persistentSessionReviveProcess" = "onExit";
  "terminal.integrated.mouseWheelZoom" = false;
  "terminal.integrated.mouseWheelScrollSensitivity" = 1;
  "terminal.integrated.minimumContrastRatio" = 1;
  "terminal.integrated.middleClickBehavior" = "default";
  "terminal.integrated.macOptionIsMeta" = true;
  "terminal.integrated.macOptionClickForcesSelection" = false;
  "terminal.integrated.localEchoStyle" = "bold";
  "terminal.integrated.localEchoLatencyThreshold" = 0;
  "terminal.integrated.localEchoEnabled" = "off";
  "terminal.integrated.initialHint" = true;
  "terminal.integrated.inheritEnv" = true;
  "terminal.integrated.ignoreBracketedPasteMode" = false;
  "terminal.integrated.hideOnStartup" = "never";
  "terminal.integrated.hideOnLastClosed" = true;
  "terminal.integrated.gpuAcceleration" = "off";
  "terminal.integrated.fontLigatures.featureSettings" = "";
  "terminal.integrated.fontLigatures.enabled" = false;
  "terminal.integrated.focusAfterRun" = "terminal";
  "terminal.integrated.fastScrollSensitivity" = 5;
  "terminal.integrated.environmentChangesRelaunch" = true;
  "terminal.integrated.environmentChangesIndicator" = "on";
  "terminal.integrated.enableVisualBell" = false;
  "terminal.integrated.enablePersistentSessions" = true;
  "terminal.integrated.enableMultiLinePasteWarning" = "never";
  "terminal.integrated.enableImages" = true;
  "terminal.integrated.enableFileLinks" = "on";
  "terminal.integrated.drawBoldTextInBrightColors" = true;
  "terminal.integrated.detectLocale" = "on";
  "terminal.integrated.defaultProfile.windows" = "";
  "terminal.integrated.defaultProfile.osx" = "";
  "terminal.integrated.defaultProfile.linux" = "";
  "terminal.integrated.defaultLocation" = "view";
  "terminal.integrated.cwd" = "\${workspaceFolder}";
  "terminal.integrated.customGlyphs" = true;
  "terminal.integrated.copyOnSelection" = true;
  "terminal.integrated.confirmOnKill" = "always";
  "terminal.integrated.confirmOnExit" = "never";
  "terminal.integrated.bellDuration" = 1000;
  "terminal.integrated.automationProfile.windows" = null;
  "terminal.integrated.automationProfile.osx" = null;
  "terminal.integrated.automationProfile.linux" = null;
  "terminal.integrated.altClickMovesCursor" = true;
  "terminal.integrated.allowMnemonics" = true;
  "terminal.integrated.allowChords" = true;
  "terminal.integrated.accessibleViewPreserveCursorPosition" = false;
  "terminal.integrated.accessibleViewFocusOnCommandExecution" = false;
  "terminal.external.windowsExec" = terminal;
  "terminal.external.osxExec" = terminal;
  "terminal.external.linuxExec" = terminal;
  "terminal.explorerKind" = "integrated";
}
