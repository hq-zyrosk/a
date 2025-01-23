{
  home = {
    file = {
      "taskfile.yaml" = {
        source = ./static/task.yaml;
        enable = true;
      };
      ".config/home-manager/home.nix" = {
        source = ./static/home.nix;
        enable = true;
      };
    };
  };
}
