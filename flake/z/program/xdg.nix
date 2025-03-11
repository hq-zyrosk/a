{pkgs, ...}: {
  xdg = {
    portal = {
      extraPortals = with pkgs; [xdg-desktop-portal-hyprland];
      config = {
        common = {
          default = ["hyprland"];
        };
      };
      xdgOpenUsePortal = true;
      enable = true;
    };
  };
}
