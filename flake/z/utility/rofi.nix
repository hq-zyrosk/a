{pkgs, ...}: {
  programs = {
    rofi = {
      plugins = [];
      theme = ./rofi/theme.rasi;
      package = pkgs.rofi-wayland;
      font = "PragmataPro Mono Liga";
      enable = true;
    };
  };
}
