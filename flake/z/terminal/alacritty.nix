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
          size = 10;
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
            dim_foreground = "#000000";
            foreground = "#000000";
            background = "#FFEFDF";
          };
          normal = {
            black = "#888888";
            red = "#C90000";
            green = "#007400";
            yellow = "#666600";
            blue = "#0000D0";
            magenta = "#6F006F";
            cyan = "#004444";
            white = "#898989";
          };
          dim = {
            black = "#888888";
            red = "#C90000";
            green = "#007400";
            yellow = "#666600";
            blue = "#0000D0";
            magenta = "#6F006F";
            cyan = "#004444";
            white = "#898989";
          };
          bright = {
            black = "#888888";
            red = "#C90000";
            green = "#007400";
            yellow = "#666600";
            blue = "#0000D0";
            magenta = "#6F006F";
            cyan = "#004444";
            white = "#898989";
          };
        };
      };
      enable = true;
    };
  };
}
