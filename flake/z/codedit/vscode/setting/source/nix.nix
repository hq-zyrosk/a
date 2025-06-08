{
  "nix.serverSettings" = {
    "nixd" = {
      "options" = {
        "home-manager" = {
          "expr" = "(builtins.getFlake \"/home/x/a\").homeConfigurations.\"a@x\".options";
        };
        "nixos" = {
          "expr" = "(builtins.getFlake \"/home/x/a\").nixosConfigurations.x.options";
        };
      };
      "nixpkgs" = {
        "expr" = "import (builtins.getFlake \"/home/x/a\").inputs.nixpkgs { }";
      };
      "formatting" = {
        "command" = [
          "alejandra"
        ];
      };
      "diagnostic" = {
        "suppress" = [];
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
  "nix.formatterPath" = "alejandra";
  "nix.enableLanguageServer" = true;
}
