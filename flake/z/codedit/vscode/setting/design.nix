let
  workbench = import ./design/workbench.nix;
  window = import ./design/window.nix;
  terminal = import ./design/terminal.nix;
  notebook = import ./design/notebook.nix;
  font = import ./design/font.nix;
  extension = import ./design/extension.nix;
  explorer = import ./design/explorer.nix;
  editor = import ./design/editor.nix;
  colour = import ./design/colour.nix;
  chat_inline = import ./design/chat/inline.nix;
  chat = import ./design/chat.nix;
in
workbench
// window
// terminal
// notebook
// font
// extension
// explorer
// editor
// colour
// chat_inline
// chat
// {
  "screencastMode.keyboardOptions" = {
    "showCommandGroups" = false;
    "showCommands" = true;
    "showKeybindings" = true;
    "showKeys" = true;
    "showSingleEditorCursorMoves" = true;
  };
  "http.experimental.systemCertificatesV2" = true;
  "breadcrumbs.enabled" = false;
  "application.experimental.rendererProfiling" = true;
}
