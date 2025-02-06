{ pkgs, ... }:
{
  programs = {
    rofi = {
      plugins = with pkgs; [
        rofi-calc
      ];
      package = pkgs.rofi-wayland;
      font = "PragmataPro Mono Liga";
      enable = true;
    };
  };
}
