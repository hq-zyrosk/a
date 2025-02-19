let
  text-size = 10;
  text-high = 1;
in
{
  programs = {
    foot = {
      settings = {
        url = { };
        text-bindings = {
          "\\x03" = "Control+q";
        };
        scrollback = {
          multiplier = 1.0;
          lines = 65536;
          indicator-position = "relative";
          indicator-format = "percentage";
        };
        mouse = {
          hide-when-typing = "yes";
          alternate-scroll-mode = "yes";
        };
        main = {
          term = "foot";
          shell = "nu";
          selection-target = "primary";
          pad = "0x0";
          login-shell = "no";
          line-height = text-size * text-high;
          letter-spacing = 0;
          initial-window-size-pixels = "3840x2160";
          initial-window-mode = "fullscreen";
          font-size-adjustment = 0;
          font = "monospace:size=${builtins.toString text-size}";
          dpi-aware = "yes";
          box-drawings-uses-font-glyphs = "yes";
          bold-text-in-bright = "yes";
        };
        key-bindings = {
          spawn-terminal = "Control+t";
          search-start = "Control+f";
          font-reset = "Control+0";
          font-increase = "Control+equal";
          font-decrease = "Control+minus";
          clipboard-paste = "Control+v XF86Paste";
          clipboard-copy = "Control+c XF86Copy";
        };
        environment = { };
        cursor = {
          style = "beam";
          color = "FFFFFF FF0000";
          blink = "no";
          beam-thickness = "2px";
        };
        csd = {
          size = builtins.floor text-size;
          preferred = "server";
        };
        colors = {
          regular0 = "888888";
          regular1 = "FFD1D1";
          regular2 = "00FF00";
          regular3 = "E3E300";
          regular4 = "D9D9FF";
          regular5 = "FFCCFF";
          regular6 = "00F4F4";
          regular7 = "898989";

          bright0 = "888888";
          bright1 = "FFD1D1";
          bright2 = "00FF00";
          bright3 = "E3E300";
          bright4 = "D9D9FF";
          bright5 = "FFCCFF";
          bright6 = "00F4F4";
          bright7 = "898989";

          dim0 = "888888";
          dim1 = "FFD1D1";
          dim2 = "00FF00";
          dim3 = "E3E300";
          dim4 = "D9D9FF";
          dim5 = "FFCCFF";
          dim6 = "00F4F4";
          dim7 = "898989";

          flash-alpha = 0.5;
          flash = "FFFF00";
          foreground = "000000";
          background = "FFEFDF";
          alpha = 1.0;
        };
      };
      server = {
        enable = false;
      };
      enable = true;
    };
  };
}
