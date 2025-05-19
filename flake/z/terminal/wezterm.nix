{
  programs = {
    wezterm = {
      colorSchemes = {
        brights = [
          "#5A5A5A"
          "#FFC5C5"
          "#00F500"
          "#DBDB00"
          "#CFCFFF"
          "#FFBEFF"
          "#00EBEB"
          "#FFFFFF"
        ];
        ansi = [
          "#000000"
          "#FFC5C5"
          "#00F500"
          "#DBDB00"
          "#CFCFFF"
          "#FFBEFF"
          "#00EBEB"
          "#B8B8B8"
        ];
        split = "#404040";
        selection_fg = "#000000";
        selection_bg = "#FFFFFF";
        scrollbar_thumb = "#222222";
        foreground = "#B8B8B8";
        cursor_fg = "#FFFFFF";
        cursor_border = "#FFFFFF";
        cursor_bg = "#FF0000";
        background = "#000000";
      };
      extraConfig = ''
        local config = wezterm.config_builder();

        config.window_padding = {
          left = 0,
          right = 0,
          top = 0,
          bottom = 0,
        }

        -- config.window_frame = {
        --   inactive_titlebar_fg = "#FFFFFF",
        --   inactive_titlebar_border_bottom = "#FFFFFF",
        --   inactive_titlebar_bg = "#000000",
        --   font_size = 12.0,
        --   font = wezterm.font { family = "PragmataPro Mono", weight = "Regular" },
        --   button_hover_fg = "#FFFFFF",
        --   button_hover_bg = "#FFFFFF",
        --   button_fg = "#FFFFFF",
        --   button_bg = "#FFFFFF",
        --   border_top_height = "0.25cell",
        --   border_top_color = "purple",
        --   border_right_width = "0.5cell",
        --   border_right_color = "purple",
        --   border_left_width = "0.5cell",
        --   border_left_color = "purple",
        --   border_bottom_height = "0.25cell",
        --   border_bottom_color = "purple",
        --   active_titlebar_fg = "#FFFFFF",
        --   active_titlebar_border_bottom = "#FFFFFF",
        --   active_titlebar_bg = "#000000",
        -- };

        config.tab_bar_style = {};

        config.mouse_bindings = {
          {
            event = { Up = { streak = 1, button = "Left" } },
            mods = "CTRL",
            action = wezterm.action.OpenLinkAtMouseCursor,
          },
        };

        config.keys = {
          {key="h", mods="CTRL|SHIFT", action=wezterm.action.SplitHorizontal{domain="CurrentPaneDomain"}},
          {key="v", mods="CTRL|SHIFT", action=wezterm.action.SplitVertical{domain="CurrentPaneDomain"}},
        };

        config.window_decorations = "NONE";
        config.window_background_opacity = 1.0;
        config.use_fancy_tab_bar = true;
        config.term = "xterm-256color";
        config.tab_max_width = 16;
        config.tab_bar_at_bottom = false;
        config.tab_and_split_indices_are_zero_based = false;
        config.switch_to_last_active_tab_when_closing_tab = false;
        config.show_update_window = false;
        config.show_tabs_in_tab_bar = true;
        config.show_tab_index_in_tab_bar = false;
        config.show_new_tab_button_in_tab_bar = true;
        config.show_close_tab_button_in_tabs = true;
        config.scrollback_lines = 65536;
        config.prefer_to_spawn_tabs = false;
        config.mouse_wheel_scrolls_tabs = true;
        config.max_fps = 60;
        config.line_height = 1.375;
        config.hide_tab_bar_if_only_one_tab = false;
        config.hide_mouse_cursor_when_typing = true;
        config.front_end = "OpenGL";
        config.force_reverse_video_cursor = true;
        config.font_size = 12;
        config.font = wezterm.font { family = "PragmataPro Mono", weight = "Regular" };
        config.enable_wayland = true;
        config.enable_tab_bar = true;
        config.enable_scroll_bar = false;
        config.dpi = 192;
        config.default_cwd = wezterm.home_dir;
        config.default_cursor_style = "SteadyBlock";
        config.custom_block_glyphs = true;
        config.cursor_thickness = 2;
        config.cursor_blink_ease_out = "Constant";
        config.cursor_blink_ease_in = "Constant";
        config.check_for_updates_interval_seconds = 86400;
        config.check_for_updates = false;
        config.cell_width = 1.0;
        config.audible_bell = "SystemBeep";
        config.animation_fps = 1;

        return config;
      '';
      enableZshIntegration = true;
      enableBashIntegration = true;
      enable = true;
    };
  };
}
