let
  text-wrap = 96;
  text-type = "'PragmataPro Mono Liga', monospace";
  text-tall = 0;
  text-size = 16;
  text-wide = 8;
  text-high = 1;
in
{
  "editor.rulers" = [
    text-wrap
  ];
  "workbench.tree.indent" = 2 * text-wide;
  "workbench.editor.wrapTabs" = true;
  "terminal.integrated.lineHeight" = text-high;
  "terminal.integrated.letterSpacing" = text-tall;
  "terminal.integrated.fontWeightBold" = "normal";
  "terminal.integrated.fontWeight" = "normal";
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
  "markdown.preview.fontFamily" =
    "-apple-system, BlinkMacSystemFont, 'Segoe WPC', 'Segoe UI', system-ui, 'Ubuntu', 'Droid Sans', sans-serif";
  "html.format.wrapLineLength" = text-tall;
  "editor.wrappingStrategy" = "simple";
  "editor.wrappingIndent" = "none";
  "editor.wordWrapColumn" = text-wrap;
  "editor.wordWrap" = "off";
  "editor.suggestLineHeight" = 0;
  "editor.suggestFontSize" = 0;
  "editor.minimap.sectionHeaderFontSize" = text-size;
  "editor.lineHeight" = text-high;
  "editor.letterSpacing" = text-tall;
  "editor.inlineSuggest.fontFamily" = "default";
  "editor.inlayHints.fontSize" = 0;
  "editor.inlayHints.fontFamily" = "";
  "editor.fontWeight" = "normal";
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
  "chat.editor.fontWeight" = "default";
  "chat.editor.fontSize" = text-size;
  "chat.editor.fontFamily" = "default";
}
