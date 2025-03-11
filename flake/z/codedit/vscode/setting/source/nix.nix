{
  "nix.serverSettings" = {
    "nil" = {
      "diagnostics" = {
        "ignored" = [
          "unused_binding"
          "unused_with"
        ];
      };
      "formatting" = {
        "command" = [
          "nixfmt"
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
