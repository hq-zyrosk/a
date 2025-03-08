{
  "nix.serverSettings" = {
    "nixd" = {
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
  "nix.serverPath" = "nixd";
  "nix.formatterPath" = "nixfmt";
  "nix.enableLanguageServer" = true;
}
