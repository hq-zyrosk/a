{pkgs, ...}: {
  programs = {
    firefox = {
      profiles = {
        default = {
          settings = {
            "ui.systemUsesDarkTheme" = 0;
            "reader.color_scheme" = "light";
            "browser.theme.toolbar-theme" = 0;
            "browser.theme.content-theme" = 0;
          };
        };
      };
      package = pkgs.firefox;
      enable = true;
    };
  };
}
