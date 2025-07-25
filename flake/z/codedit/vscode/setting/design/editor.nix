let
  scrollbar = {
    size = 16;
  };
  brackets = [
    [
      "{"
      "}"
    ]
    [
      "["
    ]
    [
      "("
    ]
  ];
in {
  "editor.unicodeHighlight.allowedLocales" = {};
  "editor.unicodeHighlight.allowedCharacters" = {};
  "editor.pasteAs.preferences" = [];
  "editor.dropIntoEditor.preferences" = [
    "uri.path.relative"
    "uri.path.absolute"
    "css.link.url"
    "text.plain"
  ];
  "editor.codeActionsOnSave" = {};
  "editor.wordSegmenterLocales" = "en-US";
  "editor.wordBreak" = "keepAll";
  "editor.useTabStops" = true;
  "editor.unusualLineTerminators" = "prompt";
  "editor.unfoldOnClickAfterEndOfLine" = true;
  "editor.trimAutoWhitespace" = true;
  "editor.tabSize" = 2;
  "editor.tabFocusMode" = false;
  "editor.tabCompletion" = "onlySnippets";
  "editor.stickyTabStops" = false;
  "editor.stablePeek" = true;
  "editor.snippets.codeActions.enabled" = true;
  "editor.smartSelect.selectSubwords" = true;
  "editor.smartSelect.selectLeadingAndTrailingWhitespace" = true;
  "editor.showUnused" = true;
  "editor.showFoldingControls" = "never";
  "editor.showDeprecated" = true;
  "editor.semanticHighlighting.enabled" = true;
  "editor.selectionHighlight" = true;
  "editor.selectionClipboard" = true;
  "editor.scrollPredominantAxis" = true;
  "editor.scrollBeyondLastLine" = false;
  "editor.scrollBeyondLastColumn" = 4;
  "editor.scrollbar.verticalScrollbarSize" = scrollbar.size;
  "editor.scrollbar.vertical" = "hidden";
  "editor.scrollbar.scrollByPage" = false;
  "editor.scrollbar.ignoreHorizontalScrollbarInContentHeight" = false;
  "editor.scrollbar.horizontalScrollbarSize" = scrollbar.size;
  "editor.scrollbar.horizontal" = "hidden";
  "editor.roundedSelection" = true;
  "editor.renderWhitespace" = "trailing";
  "editor.renderLineHighlightOnlyWhenFocus" = true;
  "editor.renderLineHighlight" = "none";
  "editor.renderFinalNewline" = "dimmed";
  "editor.renderControlCharacters" = true;
  "editor.rename.enablePreview" = true;
  "editor.peekWidgetDefaultFocus" = "editor";
  "editor.pasteAs.showPasteSelector" = "afterPaste";
  "editor.pasteAs.enabled" = true;
  "editor.parameterHints.enabled" = true;
  "editor.parameterHints.cycle" = true;
  "editor.padding.top" = 0;
  "editor.padding.bottom" = 0;
  "editor.overviewRulerBorder" = false;
  "editor.overtypeOnPaste" = true;
  "editor.occurrencesHighlightDelay" = 0;
  "editor.occurrencesHighlight" = "multiFile";
  "editor.multiCursorPaste" = "spread";
  "editor.multiCursorModifier" = "alt";
  "editor.multiCursorMergeOverlapping" = true;
  "editor.multiCursorLimit" = 10000;
  "editor.mouseWheelZoom" = false;
  "editor.mouseWheelScrollSensitivity" = 1;
  "editor.maxTokenizationLineLength" = 20000;
  "editor.matchBrackets" = "always";
  "editor.links" = true;
  "editor.linkedEditing" = true;
  "editor.lineNumbers" = "off";
  "editor.lineDecorationsWidth" = 16;
  "editor.lightbulb.enabled" = "off";
  "editor.largeFileOptimizations" = true;
  "editor.language.colorizedBracketPairs" = brackets;
  "editor.language.brackets" = brackets;
  "editor.insertSpaces" = true;
  "editor.hideCursorInOverviewRuler" = true;
  "editor.glyphMargin" = false;
  "editor.formatOnType" = false;
  "editor.formatOnSaveMode" = "file";
  "editor.formatOnSave" = true;
  "editor.formatOnPaste" = false;
  "editor.fastScrollSensitivity" = 5;
  "editor.experimentalGpuAcceleration" = "off";
  "editor.experimentalEditContextEnabled" = true;
  "editor.experimental.treeSitterTelemetry" = true;
  "editor.experimental.preferTreeSitter.typescript" = true;
  "editor.experimental.preferTreeSitter.regex" = true;
  "editor.experimental.preferTreeSitter.ini" = true;
  "editor.experimental.preferTreeSitter.css" = true;
  "editor.experimental.asyncTokenizationVerification" = false;
  "editor.experimental.asyncTokenizationLogging" = false;
  "editor.experimental.asyncTokenization" = true;
  "editor.emptySelectionClipboard" = true;
  "editor.dropIntoEditor.showDropSelector" = "afterDrop";
  "editor.dropIntoEditor.enabled" = true;
  "editor.dragAndDrop" = true;
  "editor.definitionLinkOpensInPeek" = false;
  "editor.defaultFormatter" = null;
  "editor.defaultFoldingRangeProvider" = null;
  "editor.defaultColorDecorators" = "never";
  "editor.cursorSurroundingLinesStyle" = "all";
  "editor.cursorSurroundingLines" = 0;
  "editor.cursorSmoothCaretAnimation" = "on";
  "editor.copyWithSyntaxHighlighting" = true;
  "editor.comments.insertSpace" = true;
  "editor.comments.ignoreEmptyLines" = true;
  "editor.columnSelection" = false;
  "editor.colorDecoratorsLimit" = 1024;
  "editor.colorDecoratorsActivatedOn" = "clickAndHover";
  "editor.colorDecorators" = true;
  "editor.codeActionWidget.showHeaders" = true;
  "editor.codeActionWidget.includeNearbyQuickFixes" = true;
  "editor.codeActions.triggerOnFocusChange" = true;
  "editor.autoSurround" = "languageDefined";
  "editor.autoClosingQuotes" = "always";
  "editor.autoClosingOvertype" = "always";
  "editor.autoClosingDelete" = "always";
  "editor.autoClosingComments" = "always";
  "editor.autoClosingBrackets" = "always";
  "editor.accessibilitySupport" = "off";
  "editor.accessibilityPageSize" = 16;
}
