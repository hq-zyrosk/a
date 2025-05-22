let
  c9 = _.rgba 1.00000 1.00000 1.00000 1.00000;
  c5 = _.rgba 0.50000 0.50000 0.50000 1.00000;
  c1 = _.rgba 0.00000 0.00000 0.00000 1.00000;
  _ = import ./_.nix;
in {
  "scrollbarSlider.hoverBackground" = c9;
  "notebookScrollbarSlider.hoverBackground" = c9;
  "minimapSlider.hoverBackground" = c9;

  "scrollbarSlider.activeBackground" = c5;
  "notebookScrollbarSlider.activeBackground" = c5;
  "minimapSlider.activeBackground" = c5;

  "scrollbarSlider.background" = c1;
  "notebookScrollbarSlider.background" = c1;
  "minimapSlider.background" = c1;
}
