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
          "#D3D3D3"
        ];
        split = "#404040";
        selection_fg = "#000000";
        selection_bg = "#FFFFFF";
        scrollbar_thumb = "#222222";
        foreground = "#D3D3D3";
        cursor_fg = "#FFFFFF";
        cursor_border = "#FFFFFF";
        cursor_bg = "#FF0000";
        background = "#000000";
      };
      extraConfig = ''
        return {
          window_background_opacity = 1.0,
          font = wezterm.font("PragmataPro Mono"),
          enable_tab_bar = true,
        }
      '';
      enableZshIntegration = true;
      enableBashIntegration = true;
      enable = true;
    };
  };
}
