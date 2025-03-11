let
  type = "line";
  size = 2;
in {
  "terminal.integrated.cursorWidth" = size;
  "terminal.integrated.cursorStyleInactive" = type;
  "terminal.integrated.cursorStyle" = type;
  "terminal.integrated.cursorBlinking" = false;
  "editor.overtypeCursorStyle" = type;
  "editor.cursorWidth" = size;
  "editor.cursorStyle" = type;
  "editor.cursorBlinking" = "solid";
}
