{
  programs = {
    nushell = {
      settings = {
        completions.external = {
          max_results = 200;
          enable = true;
        };
        show_banner = false;
      };
      enable = true;
    };
  };
}
