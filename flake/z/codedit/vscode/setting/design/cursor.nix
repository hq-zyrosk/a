let
  type = "line";
  soft = false;
  size = 2;
in {
  "editor.smoothScrolling" = true;
  "terminal.integrated.smoothScrolling" = true;
  "workbench.list.smoothScrolling" = true;
  "terminal.integrated.cursorWidth" = size;
  "terminal.integrated.cursorStyleInactive" = type;
  "terminal.integrated.cursorStyle" = type;
  "terminal.integrated.cursorBlinking" = false;
  "editor.overtypeCursorStyle" = type;
  "editor.cursorWidth" = size;
  "editor.cursorStyle" = type;
  "editor.cursorBlinking" = "solid";
}
