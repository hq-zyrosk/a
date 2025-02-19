let
  text-size = 10;
in
{
  programs = {
    alacritty = {
      settings = {
        terminal = {
          shell = "nu";
        };
        keyboard = {
          bindings = [
            {
              key = "Q";
              mods = "Control";
              chars = "\\u0003";
            }
            {
              key = "T";
              mods = "Control";
              action = "SpawnNewInstance";
            }
            {
              key = "F";
              mods = "Control|Shift";
              action = "SearchBackward";
            }
            {
              key = "F";
              mods = "Control";
              action = "SearchForward";
            }
            {
              key = "V";
              mods = "Control";
              action = "Paste";
            }
            {
              key = "C";
              mods = "Control";
              action = "Copy";
            }
          ];
        };
        font = {
          bold_italic = {
            family = "PragmataPro Mono Liga";
            style = "Bold Italic";
          };
          italic = {
            family = "PragmataPro Mono Liga";
            style = "Italic";
          };
          bold = {
            family = "PragmataPro Mono Liga";
            style = "Bold";
          };
          normal = {
            family = "PragmataPro Mono Liga";
            style = "Regular";
          };
          builtin_box_drawing = true;
          size = text-size;
        };
        cursor = {
          style = {
            shape = "beam";
            blinking = "Off";
          };
          thickness = 1;
        };
        colors = {
          primary = {
            dim_foreground = "#808080";
            foreground = "#FFFFFF";
            background = "#000000";
          };
          normal = {
            yellow = "#C2C200";
            white = "#898989";
            red = "#FFA3A3";
            magenta = "#FF96FF";
            green = "#00DA00";
            cyan = "#00D1D1";
            blue = "#B5B5FF";
            black = "#888888";
          };
          dim = {
            yellow = "#C2C200";
            white = "#898989";
            red = "#FFA3A3";
            magenta = "#FF96FF";
            green = "#00DA00";
            cyan = "#00D1D1";
            blue = "#B5B5FF";
            black = "#888888";
          };
          bright = {
            yellow = "#C2C200";
            white = "#898989";
            red = "#FFA3A3";
            magenta = "#FF96FF";
            green = "#00DA00";
            cyan = "#00D1D1";
            blue = "#B5B5FF";
            black = "#888888";
          };
        };
      };
      enable = true;
    };
  };
}
