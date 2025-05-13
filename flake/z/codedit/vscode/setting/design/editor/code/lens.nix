let
  enabled = false;
in {
  "xml.codeLens.enabled" = enabled;
  "typescript.referencesCodeLens.showOnAllFunctions" = true;
  "typescript.referencesCodeLens.enabled" = enabled;
  "typescript.implementationsCodeLens.showOnInterfaceMethods" = true;
  "typescript.implementationsCodeLens.enabled" = enabled;
  "rust-analyzer.lens.updateTest.enable" = enabled;
  "rust-analyzer.lens.run.enable" = enabled;
  "rust-analyzer.lens.references.trait.enable" = enabled;
  "rust-analyzer.lens.references.method.enable" = enabled;
  "rust-analyzer.lens.references.enumVariant.enable" = enabled;
  "rust-analyzer.lens.references.adt.enable" = enabled;
  "rust-analyzer.lens.location" = "above_whole_item";
  "rust-analyzer.lens.implementations.enable" = enabled;
  "rust-analyzer.lens.enable" = enabled;
  "rust-analyzer.lens.debug.enable" = enabled;
  "merge-conflict.codeLens.enabled" = enabled;
  "javascript.referencesCodeLens.showOnAllFunctions" = true;
  "javascript.referencesCodeLens.enabled" = enabled;
  "github.copilot.chat.generateTests.codeLens" = true;
  "editor.codeLens" = enabled;
  "diffEditor.codeLens" = enabled;
  "debug.javascript.codelens.npmScripts" = "all";
}
