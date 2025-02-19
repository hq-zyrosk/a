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
            yellow = "#666600";
            white = "#898989";
            red = "#C90000";
            magenta = "#6F006F";
            green = "#00FF00";
            cyan = "#00F4F4";
            blue = "#D9D9FF";
            black = "#888888";
          };
          dim = {
            yellow = "#666600";
            white = "#898989";
            red = "#C90000";
            magenta = "#6F006F";
            green = "#00FF00";
            cyan = "#00F4F4";
            blue = "#D9D9FF";
            black = "#888888";
          };
          bright = {
            yellow = "#666600";
            white = "#898989";
            red = "#C90000";
            magenta = "#6F006F";
            green = "#00FF00";
            cyan = "#00F4F4";
            blue = "#D9D9FF";
            black = "#888888";
          };
        };
      };
      enable = true;
    };
  };
}
