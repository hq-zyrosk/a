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
          regular0 = "898989";
          regular1 = "FFA3A3";
          regular2 = "00DA00";
          regular3 = "C2C200";
          regular4 = "B5B5FF";
          regular5 = "FF96FF";
          regular6 = "00D1D1";
          regular7 = "BCBCBC";

          bright0 = "898989";
          bright1 = "FFA3A3";
          bright2 = "00DA00";
          bright3 = "C2C200";
          bright4 = "B5B5FF";
          bright5 = "FF96FF";
          bright6 = "00D1D1";
          bright7 = "BCBCBC";

          dim0 = "898989";
          dim1 = "FFA3A3";
          dim2 = "00DA00";
          dim3 = "C2C200";
          dim4 = "B5B5FF";
          dim5 = "FF96FF";
          dim6 = "00D1D1";
          dim7 = "BCBCBC";

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
