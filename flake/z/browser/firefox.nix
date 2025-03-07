{ pkgs, ... }:
{
  programs = {
    firefox = {
      profiles = {
        default = {
          settings = {
            "ui.systemUsesDarkTheme" = 1;
            "reader.color_scheme" = "dark";
            "browser.theme.toolbar-theme" = 1;
            "browser.theme.content-theme" = 1;
          };
        };
      };
      package = pkgs.firefox;
      enable = true;
    };
  };
}
