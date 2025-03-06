{
  home = {
    file = {
      ".config/home-manager/home.nix" = {
        source = ./static/home.nix;
        enable = true;
      };
      ".config/nixpkgs/config.nix" = {
        source = ./static/config.nix;
        enable = true;
      };
      "justfile" = {
        source = ./static/justfile;
        enable = true;
      };
    };
  };
}
