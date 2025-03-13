{
  "nix.serverSettings" = {
    "nil" = {
      "diagnostics" = {
        "ignored" = [];
      };
      "formatting" = {
        "command" = [
          "alejandra"
        ];
      };
    };
  };
  "nix.hiddenLanguageServerErrors" = [
    "textDocument/documentSymbol"
    "textDocument/definition"
  ];
  "[nix]" = {
    "editor.defaultFormatter" = "jnoortheen.nix-ide";
  };
  "nix.serverPath" = "nil";
  "nix.formatterPath" = "alejandra";
  "nix.enableLanguageServer" = true;
}
