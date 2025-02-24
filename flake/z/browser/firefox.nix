{ pkgs, ... }:
{
  programs = {
    firefox = {
      profiles.default = {
        settings = {
          "browser.theme.content-theme" = 1;
          "browser.theme.toolbar-theme" = 1;
        };
      };
      package = pkgs.firefox;
      enable = true;
    };
  };
}
