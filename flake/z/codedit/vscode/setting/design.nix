let
  workbench = import ./design/workbench.nix;
  window = import ./design/window.nix;
  extension = import ./design/extension.nix;
  explorer = import ./design/explorer.nix;
  editor = import ./design/editor.nix;
  colour = import ./design/colour.nix;
in
workbench
// window
// extension
// explorer
// editor
// colour
// {
  "screencastMode.keyboardOptions" = {
    "showCommandGroups" = false;
    "showCommands" = true;
    "showKeybindings" = true;
    "showKeys" = true;
    "showSingleEditorCursorMoves" = true;
  };
  "inlineChat.holdToSpeech" = true;
  "inlineChat.finishOnType" = false;
  "inlineChat.accessibleDiffView" = "on";
  "http.experimental.systemCertificatesV2" = true;
  "breadcrumbs.enabled" = false;
  "application.experimental.rendererProfiling" = true;
}
