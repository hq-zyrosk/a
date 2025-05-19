let
  text-size = 10;
  text-high = 4;
  text-wide = 0;
in {
  programs = {
    alacritty = {
      settings = {
        window = {
          position = {
            x = 0;
            y = 0;
          };
          padding = {
            x = 0;
            y = 0;
          };
          dimensions = {
            columns = 0;
            lines = 0;
          };
          class = {
            instance = "Alacritty";
            general = "Alacritty";
          };
          title = "Alacritty";
          startup_mode = "Fullscreen";
          resize_increments = false;
          option_as_alt = "None";
          opacity = 1.0;
          level = "Normal";
          dynamic_title = true;
          dynamic_padding = false;
          decorations_theme_variant = "Dark";
          decorations = "None";
          blur = false;
        };
        terminal = {
          shell = "fish";
        };
        scrolling = {
          history = 65536;
          multiplier = 3;
        };
        keyboard = {
          bindings = [
            {
              key = "Escape";
              mods = "Control";
              chars = "\\u0003";
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
        general = {
          working_directory = "None";
          live_config_reload = true;
          import = [];
        };
        font = {
          bold_italic = {
            family = "PragmataPro Mono";
            style = "Bold Italic";
          };
          italic = {
            family = "PragmataPro Mono";
            style = "Italic";
          };
          bold = {
            family = "PragmataPro Mono";
            style = "Bold";
          };
          normal = {
            family = "PragmataPro Mono";
            style = "Regular";
          };
          glyph_offset = {
            y = text-high;
            x = text-wide;
          };
          offset = {
            y = text-high;
            x = text-wide;
          };
          builtin_box_drawing = false;
          size = text-size;
        };
        cursor = {
          vi_mode_style = {
            shape = "beam";
            blinking = "Off";
          };
          style = {
            shape = "beam";
            blinking = "Off";
          };
          unfocused_hollow = false;
          thickness = 0.25;
          blink_timeout = 0;
          blink_interval = 1000;
        };
        colors = {
          vi_mode_cursor = {
            text = "#000000";
            cursor = "#FF0000";
          };
          cursor = {
            text = "#000000";
            cursor = "#FF0000";
          };
          primary = {
            dim_foreground = "#5A5A5A";
            foreground = "#B3B3B3";
            background = "#000000";
          };
          normal = {
            yellow = "#DBDB00";
            white = "#B3B3B3";
            red = "#FFC5C5";
            magenta = "#FFBEFF";
            green = "#00F500";
            cyan = "#00EBEB";
            blue = "#CFCFFF";
            black = "#5A5A5A";
          };
          dim = {
            yellow = "#DBDB00";
            white = "#B3B3B3";
            red = "#FFC5C5";
            magenta = "#FFBEFF";
            green = "#00F500";
            cyan = "#00EBEB";
            blue = "#CFCFFF";
            black = "#5A5A5A";
          };
          bright = {
            yellow = "#DBDB00";
            white = "#B3B3B3";
            red = "#FFC5C5";
            magenta = "#FFBEFF";
            green = "#00F500";
            cyan = "#00EBEB";
            blue = "#CFCFFF";
            black = "#5A5A5A";
          };
          draw_bold_text_with_bright_colors = true;
        };
      };
      enable = true;
    };
  };
}
