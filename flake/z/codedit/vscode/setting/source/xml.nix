let
  codelens = true;
in {
  "xml.validation.filters" = [
    {
      "schema" = {
        "enabled" = "never";
      };
      "pattern" = "**.exsd";
      "noGrammar" = "ignore";
    }
    {
      "pattern" = "**{.project,.classpath,plugin.xml,feature.xml,category.xml,.target,.product}";
      "noGrammar" = "ignore";
    }
  ];
  "xml.symbols.filters" = [];
  "xml.symbols.excluded" = [];
  "xml.server.binary.trustedHashes" = [];
  "xml.references" = [];
  "xml.format.preserveSpace" = [
    "xsl:text"
    "xsl:processing-instruction"
    "xsl:comment"
    "xd:pre"
    "synopsis"
    "screen"
    "programlisting"
    "pre"
    "literallayout"
  ];
  "[xml]" = {
    "editor.defaultFormatter" = "redhat.vscode-xml";
  };
  "xml.filePathSupport.mappings" = [];
  "xml.fileAssociations" = [];
  "xml.extension.jars" = [];
  "xml.colors" = [];
  "xml.catalogs" = [];
  "xml.validation.xInclude.enabled" = true;
  "xml.validation.schema.enabled" = "always";
  "xml.validation.resolveExternalEntities" = true;
  "xml.validation.noGrammar" = "hint";
  "xml.validation.namespaces.enabled" = "always";
  "xml.validation.enabled" = true;
  "xml.validation.disallowDocTypeDecl" = false;
  "xml.trace.server" = "off";
  "xml.symbols.showReferencedGrammars" = true;
  "xml.symbols.maxItemsComputed" = 5000;
  "xml.symbols.enabled" = true;
  "xml.server.workDir" = "~/.lemminx";
  "xml.server.vmargs" = "-Xmx64M";
  "xml.server.silenceExtensionWarning" = false;
  "xml.server.preferBinary" = false;
  "xml.server.binary.path" = "";
  "xml.server.binary.args" = "";
  "xml.preferences.showSchemaDocumentationType" = "all";
  "xml.preferences.quoteStyle" = "double";
  "xml.logs.client" = true;
  "xml.java.home" = "";
  "xml.format.xsiSchemaLocationSplit" = "onPair";
  "xml.format.splitAttributesIndentSize" = 2;
  "xml.format.splitAttributes" = "alignWithFirstAttr";
  "xml.format.spaceBeforeEmptyCloseTag" = false;
  "xml.format.preserveEmptyContent" = false;
  "xml.format.preservedNewlines" = 2;
  "xml.format.preserveAttributeLineBreaks" = true;
  "xml.format.maxLineWidth" = 100;
  "xml.format.legacy" = false;
  "xml.format.joinContentLines" = false;
  "xml.format.joinCommentLines" = false;
  "xml.format.joinCDATALines" = false;
  "xml.format.grammarAwareFormatting" = true;
  "xml.format.enforceQuoteStyle" = "preferred";
  "xml.format.enabled" = true;
  "xml.format.emptyElements" = "expand";
  "xml.format.closingBracketNewLine" = false;
  "xml.foldings.includeClosingTagInFold" = false;
  "xml.downloadExternalResources.enabled" = true;
  "xml.completion.autoCloseTags" = true;
  "xml.completion.autoCloseRemovesContent" = true;
  "xml.codeLens.enabled" = codelens;
}
