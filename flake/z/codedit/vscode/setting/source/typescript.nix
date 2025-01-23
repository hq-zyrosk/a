let
  npm = import ./typescript/npm.nix;
  eslint = import ./typescript/eslint.nix;
in
npm
// eslint
// {
  "typescript.workspaceSymbols.scope" = "currentProject";
  "typescript.workspaceSymbols.excludeLibrarySymbols" = true;
  "typescript.validate.enable" = true;
  "typescript.updateImportsOnPaste.enabled" = false;
  "typescript.updateImportsOnFileMove.enabled" = "always";
  "typescript.tsserver.web.typeAcquisition.enabled" = true;
  "typescript.tsserver.web.projectWideIntellisense.suppressSemanticErrors" = false;
  "typescript.tsserver.web.projectWideIntellisense.enabled" = true;
  "typescript.tsserver.watchOptions" = { };
  "typescript.tsserver.useSyntaxServer" = "never";
  "typescript.tsserver.nodePath" = "node";
  "typescript.tsserver.maxTsServerMemory" = 3072;
  "typescript.tsserver.log" = "off";
  "typescript.tsserver.experimental.enableProjectDiagnostics" = true;
  "typescript.tsserver.enableTracing" = true;
  "typescript.tsserver.enableRegionDiagnostics" = false;
  "typescript.tsc.autoDetect" = "on";
  "typescript.surveys.enabled" = false;
  "typescript.suggestionActions.enabled" = true;
  "typescript.suggest.paths" = true;
  "typescript.suggest.objectLiteralMethodSnippets.enabled" = true;
  "typescript.suggest.jsdoc.generateReturns" = true;
  "typescript.suggest.includeCompletionsForImportStatements" = true;
  "typescript.suggest.includeAutomaticOptionalChainCompletions" = true;
  "typescript.suggest.enabled" = true;
  "typescript.suggest.completeJSDocs" = true;
  "typescript.suggest.completeFunctionCalls" = true;
  "typescript.suggest.classMemberSnippets.enabled" = true;
  "typescript.suggest.autoImports" = true;
  "typescript.reportStyleChecksAsWarnings" = true;
  "typescript.referencesCodeLens.showOnAllFunctions" = true;
  "typescript.referencesCodeLens.enabled" = true;
  "typescript.preferences.useAliasesForRenames" = false;
  "typescript.preferences.renameMatchingJsxTags" = true;
  "typescript.preferences.quoteStyle" = "double";
  "typescript.preferences.preferTypeOnlyAutoImports" = true;
  "typescript.preferences.jsxAttributeCompletionStyle" = "braces";
  "typescript.preferences.includePackageJsonAutoImports" = "on";
  "typescript.preferences.importModuleSpecifierEnding" = "auto";
  "typescript.preferences.importModuleSpecifier" = "project-relative";
  "typescript.preferences.autoImportFileExcludePatterns" = [ ];
  "typescript.preferGoToSourceDefinition" = true;
  "typescript.locale" = "en";
  "typescript.inlayHints.variableTypes.suppressWhenTypeMatchesName" = false;
  "typescript.inlayHints.variableTypes.enabled" = false;
  "typescript.inlayHints.propertyDeclarationTypes.enabled" = false;
  "typescript.inlayHints.parameterTypes.enabled" = false;
  "typescript.inlayHints.parameterNames.suppressWhenArgumentMatchesName" = false;
  "typescript.inlayHints.parameterNames.enabled" = "none";
  "typescript.inlayHints.functionLikeReturnTypes.enabled" = false;
  "typescript.inlayHints.enumMemberValues.enabled" = false;
  "typescript.implementationsCodeLens.showOnInterfaceMethods" = true;
  "typescript.implementationsCodeLens.enabled" = true;
  "typescript.format.enable" = false;
  "typescript.experimental.expandableHover" = false;
  "typescript.enablePromptUseWorkspaceTsdk" = false;
  "typescript.disableAutomaticTypeAcquisition" = false;
  "typescript.check.npmIsInstalled" = true;
  "typescript.autoClosingTags" = true;
}
