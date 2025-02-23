{
  programs = {
    nushell = {
      settings = {
        # menus = [
        #   {
        #     type = {
        #       layout = "columnar";
        #       columns = 4;
        #       col_width = 20;
        #       col_padding = 2;
        #     };
        #     style = {
        #       text = "green";
        #       selected_text = "green_reverse";
        #       description_text = "yellow";
        #     };
        #     only_buffer_difference = false;
        #     name = "completion_menu";
        #     marker = "| ";
        #   }
        # ];
        completions = {
          external = {
            max_results = 200;
            enable = true;
          };
          partial = true;
          case_sensitive = false;
        };
        show_banner = false;
      };
      configFile = {
        source = ./nushell/config.nu;
      };
      enable = true;
    };
  };
}
