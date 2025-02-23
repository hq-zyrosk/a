{ pkgs, ... }:
{
  programs = {
    rofi = {
      plugins = [ ];
      package = pkgs.rofi-wayland;
      font = "PragmataPro Mono Liga";
      enable = true;
    };
  };
}
