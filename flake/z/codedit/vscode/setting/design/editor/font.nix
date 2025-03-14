let
  text-type = "'PragmataPro Mono Liga', monospace";
  text-trip = " `'\"_-+=,.:;/|\\~!@#$%^&*?<>[]{}()";
  text-kind = "Bold";
  text-high = 1.375;
  text-wrap = 96;
  text-tall = 0;
  text-size = 16;
  text-wide = 8;
in {
  "editor.rulers" = [
    text-wrap
  ];
  "workbench.tree.indent" = 2 * text-wide;
  "workbench.editor.wrapTabs" = true;
  "terminal.integrated.wordSeparators" = text-trip;
  "terminal.integrated.lineHeight" = text-high;
  "terminal.integrated.letterSpacing" = text-tall;
  "terminal.integrated.fontWeightBold" = text-kind;
  "terminal.integrated.fontWeight" = text-kind;
  "terminal.integrated.fontSize" = text-size;
  "terminal.integrated.fontFamily" = text-type;
  "screencastMode.fontSize" = 24;
  "scm.inputFontSize" = text-size;
  "scm.inputFontFamily" = "editor";
  "notebook.output.fontSize" = 0;
  "notebook.output.fontFamily" = "";
  "notebook.markup.fontSize" = text-size;
  "markdown.preview.lineHeight" = text-high;
  "markdown.preview.fontSize" = text-size;
  "markdown.preview.fontFamily" = "sans-serif";
  "html.format.wrapLineLength" = text-tall;
  "editor.wrappingStrategy" = "simple";
  "editor.wrappingIndent" = "none";
  "editor.wordWrapColumn" = text-wrap;
  "editor.wordWrap" = "off";
  "editor.wordSeparators" = text-trip;
  "editor.suggestLineHeight" = 0;
  "editor.suggestFontSize" = 0;
  "editor.minimap.sectionHeaderFontSize" = text-size;
  "editor.minimap.maxColumn" = text-wrap;
  "editor.lineHeight" = text-high;
  "editor.letterSpacing" = text-tall;
  "editor.inlineSuggest.fontFamily" = "default";
  "editor.inlayHints.fontSize" = 0;
  "editor.inlayHints.fontFamily" = "";
  "editor.fontWeight" = text-kind;
  "editor.fontVariations" = true;
  "editor.fontSize" = text-size;
  "editor.fontLigatures" = true;
  "editor.fontFamily" = text-type;
  "editor.experimentalWhitespaceRendering" = "font";
  "editor.codeLensFontSize" = 0;
  "editor.codeLensFontFamily" = text-type;
  "debug.console.lineHeight" = 0;
  "debug.console.fontSize" = text-size;
  "debug.console.fontFamily" = "default";
  "chat.editor.wordWrap" = "off";
  "chat.editor.lineHeight" = 0;
  "chat.editor.fontWeight" = text-kind;
  "chat.editor.fontSize" = text-size;
  "chat.editor.fontFamily" = "default";
}
