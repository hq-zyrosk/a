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
          regular0 = "D3D3D3";
          regular1 = "FFC5C5";
          regular2 = "00F500";
          regular3 = "DBDB00";
          regular4 = "CFCFFF";
          regular5 = "FFBEFF";
          regular6 = "00EBEB";
          regular7 = "D3D3D3";

          bright0 = "D3D3D3";
          bright1 = "FFC5C5";
          bright2 = "00F500";
          bright3 = "DBDB00";
          bright4 = "CFCFFF";
          bright5 = "FFBEFF";
          bright6 = "00EBEB";
          bright7 = "D3D3D3";

          dim0 = "D3D3D3";
          dim1 = "FFC5C5";
          dim2 = "00F500";
          dim3 = "DBDB00";
          dim4 = "CFCFFF";
          dim5 = "FFBEFF";
          dim6 = "00EBEB";
          dim7 = "D3D3D3";

          flash-alpha = 0.5;
          flash = "FFFF00";
          foreground = "000000";
          background = "5A5A5A";
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
