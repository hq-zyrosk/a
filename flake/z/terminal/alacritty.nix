let
  text-size = 10;
in
{
  programs = {
    alacritty = {
      settings = {
        terminal = {
          shell = "fish";
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
            dim_foreground = "#5A5A5A";
            foreground = "#D3D3D3";
            background = "#000000";
          };
          normal = {
            yellow = "#DBDB00";
            white = "#D3D3D3";
            red = "#FFC5C5";
            magenta = "#FFBEFF";
            green = "#00F500";
            cyan = "#00EBEB";
            blue = "#CFCFFF";
            black = "#5A5A5A";
          };
          dim = {
            yellow = "#DBDB00";
            white = "#D3D3D3";
            red = "#FFC5C5";
            magenta = "#FFBEFF";
            green = "#00F500";
            cyan = "#00EBEB";
            blue = "#CFCFFF";
            black = "#5A5A5A";
          };
          bright = {
            yellow = "#DBDB00";
            white = "#D3D3D3";
            red = "#FFC5C5";
            magenta = "#FFBEFF";
            green = "#00F500";
            cyan = "#00EBEB";
            blue = "#CFCFFF";
            black = "#5A5A5A";
          };
        };
      };
      enable = true;
    };
  };
}
