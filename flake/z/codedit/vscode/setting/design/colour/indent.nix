let
  c9 = _.rgba 1.00000 1.00000 1.00000 1.00000;
  c5 = _.rgba 0.50000 0.50000 0.50000 1.00000;
  c1 = _.rgba 0.25000 0.25000 0.25000 1.00000;
  _ = import ./_.nix;
in {
  "tree.indentGuidesStroke" = c9;
  "editorIndentGuide.activeBackground6" = c9;
  "editorIndentGuide.activeBackground5" = c9;
  "editorIndentGuide.activeBackground4" = c9;
  "editorIndentGuide.activeBackground3" = c9;
  "editorIndentGuide.activeBackground2" = c9;
  "editorIndentGuide.activeBackground1" = c9;
  "editorBracketPairGuide.activeBackground6" = c9;
  "editorBracketPairGuide.activeBackground5" = c9;
  "editorBracketPairGuide.activeBackground4" = c9;
  "editorBracketPairGuide.activeBackground3" = c9;
  "editorBracketPairGuide.activeBackground2" = c9;
  "editorBracketPairGuide.activeBackground1" = c9;

  "tree.inactiveIndentGuidesStroke" = c5;
  "editorIndentGuide.background6" = c5;
  "editorIndentGuide.background5" = c5;
  "editorIndentGuide.background4" = c5;
  "editorIndentGuide.background3" = c5;
  "editorIndentGuide.background2" = c5;
  "editorIndentGuide.background1" = c5;
  "editorBracketPairGuide.background6" = c5;
  "editorBracketPairGuide.background5" = c5;
  "editorBracketPairGuide.background4" = c5;
  "editorBracketPairGuide.background3" = c5;
  "editorBracketPairGuide.background2" = c5;
  "editorBracketPairGuide.background1" = c5;
  "editorBracketHighlight.foreground6" = c5;
  "editorBracketHighlight.foreground5" = c5;
  "editorBracketHighlight.foreground4" = c5;
  "editorBracketHighlight.foreground3" = c5;
  "editorBracketHighlight.foreground2" = c5;
  "editorBracketHighlight.foreground1" = c5;
}
