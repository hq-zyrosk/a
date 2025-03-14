let
  type = "line";
  soft = false;
  size = 2;
in {
  "workbench.list.smoothScrolling" = soft;
  "terminal.integrated.smoothScrolling" = soft;
  "terminal.integrated.cursorWidth" = size;
  "terminal.integrated.cursorStyleInactive" = type;
  "terminal.integrated.cursorStyle" = type;
  "terminal.integrated.cursorBlinking" = false;
  "editor.smoothScrolling" = soft;
  "editor.overtypeCursorStyle" = type;
  "editor.cursorWidth" = size;
  "editor.cursorStyle" = type;
  "editor.cursorBlinking" = "solid";
}
