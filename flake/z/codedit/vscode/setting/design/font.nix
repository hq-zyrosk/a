let
  word-wrap = 96;
  text-type = "'PragmataPro Mono Liga', monospace";
  text-tall = 0;
  text-size = 16;
  text-high = 1;
  tab-width = 98;
in
{
  "editor.rulers" = [
    word-wrap
  ];
  "workbench.tree.indent" = text-size;
  "workbench.editor.tabSizingFixedMinWidth" = tab-width;
  "workbench.editor.tabSizingFixedMaxWidth" = tab-width;
  "terminal.integrated.lineHeight" = text-high;
  "terminal.integrated.letterSpacing" = text-tall;
  "terminal.integrated.fontSize" = text-size;
  "terminal.integrated.fontFamily" = text-type;
  "markdown.preview.lineHeight" = text-high;
  "markdown.preview.fontSize" = text-size;
  "markdown.preview.fontFamily" =
    "-apple-system, BlinkMacSystemFont, 'Segoe WPC', 'Segoe UI', system-ui, 'Ubuntu', 'Droid Sans', sans-serif";
  "notebook.markup.fontSize" = text-size;
  "html.format.wrapLineLength" = text-tall;
  "editor.wordWrapColumn" = word-wrap;
  "editor.minimap.sectionHeaderFontSize" = text-size;
  "editor.lineHeight" = text-high;
  "editor.letterSpacing" = text-tall;
  "editor.fontSize" = text-size;
  "editor.fontFamily" = text-type;
  "editor.codeLensFontFamily" = text-type;
  "scm.inputFontSize" = text-size;
  "debug.console.fontSize" = text-size;
  "chat.editor.fontSize" = text-size;
}
