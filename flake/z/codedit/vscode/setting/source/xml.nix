{
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
  "xml.completion.autoCloseRemovesContent" = true;
  "xml.completion.autoCloseTags" = true;
  "xml.downloadExternalResources.enabled" = true;
  "xml.foldings.includeClosingTagInFold" = false;
  "xml.format.closingBracketNewLine" = false;
  "xml.format.emptyElements" = "expand";
  "xml.format.enabled" = true;
  "xml.format.enforceQuoteStyle" = "preferred";
  "xml.format.grammarAwareFormatting" = true;
  "xml.format.joinCDATALines" = false;
  "xml.format.joinCommentLines" = false;
  "xml.format.joinContentLines" = false;
  "xml.format.legacy" = false;
  "xml.format.maxLineWidth" = 100;
  "xml.format.preserveAttributeLineBreaks" = true;
  "xml.format.preservedNewlines" = 2;
  "xml.format.preserveEmptyContent" = false;
  "xml.format.spaceBeforeEmptyCloseTag" = false;
  "xml.format.splitAttributes" = "alignWithFirstAttr";
  "xml.format.splitAttributesIndentSize" = 2;
  "xml.format.xsiSchemaLocationSplit" = "onPair";
  "xml.java.home" = "";
  "xml.logs.client" = true;
  "xml.preferences.quoteStyle" = "double";
  "xml.preferences.showSchemaDocumentationType" = "all";
  "xml.server.binary.args" = "";
  "xml.server.binary.path" = "";
  "xml.server.preferBinary" = false;
  "xml.server.silenceExtensionWarning" = false;
  "xml.server.vmargs" = "-Xmx64M";
  "xml.server.workDir" = "~/.lemminx";
  "xml.symbols.enabled" = true;
  "xml.symbols.maxItemsComputed" = 5000;
  "xml.symbols.showReferencedGrammars" = true;
}
