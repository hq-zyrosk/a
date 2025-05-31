let
  enabled = false;
in {
  "typescript.referencesCodeLens.showOnAllFunctions" = true;
  "typescript.referencesCodeLens.enabled" = enabled;
  "typescript.implementationsCodeLens.showOnInterfaceMethods" = true;
  "typescript.implementationsCodeLens.enabled" = enabled;
  "merge-conflict.codeLens.enabled" = enabled;
  "javascript.referencesCodeLens.showOnAllFunctions" = true;
  "javascript.referencesCodeLens.enabled" = enabled;
  "editor.codeLens" = enabled;
  "diffEditor.codeLens" = enabled;
  "debug.javascript.codelens.npmScripts" = "all";
}
