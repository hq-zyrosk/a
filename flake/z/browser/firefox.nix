{ pkgs, ... }:
{
  programs = {
    firefox = {
      profiles = {
        default = {
          settings = {
            "widget.content.allow-gtk-dark-theme" = true;
            "ui.systemUsesDarkTheme" = 1;
            "reader.color_scheme" = "dark";
            "layout.css.prefers-color-scheme.content-override" = 0;
            "browser.theme.toolbar-theme" = 1;
            "browser.theme.content-theme" = 1;
            "browser.in-content.dark-mode" = true;
          };
        };
      };
      package = pkgs.firefox;
      enable = true;
    };
  };
}
