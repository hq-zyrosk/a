{pkgs, ...}: {
  programs = {
    firefox = {
      profiles = {
        default = {
          settings = {};
        };
      };
      package = pkgs.firefox;
      enable = true;
    };
  };
}
