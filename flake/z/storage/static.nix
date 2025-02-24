{
  home = {
    file = {
      "justfile" = {
        source = ./static/justfile;
        enable = true;
      };
      ".config/home-manager/home.nix" = {
        source = ./static/home.nix;
        enable = true;
      };
    };
  };
}
