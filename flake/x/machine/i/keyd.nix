{
  services = {
    keyd = {
      keyboards = {
        default = {
          settings = {
            "leftcontrol:M" = {};
            "leftmeta:A" = {
              "'" = "write ′";
            };
            "leftalt:C" = {
              "down" = "pagedown";
              "up" = "pageup";

              "right" = "end";
              "left" = "home";
            };
            "main" = {
              "leftcontrol" = "layer(leftcontrol)";
              "leftmeta" = "layer(leftmeta)";
              "leftalt" = "layer(leftalt)";

              "\\" = "/";
              "/" = "\\";
            };
          };
          ids = [
            "*"
          ];
          extraConfig = "";
        };
      };
      enable = true;
    };
  };

  environment = {
    etc = {
      "libinput/local-overrides.quirks" = {
        text = ''
          [Serial Keyboards]
          MatchUdevType=keyboard
          MatchName=keyd virtual keyboard
          AttrKeyboardIntegration=internal
        '';
      };
    };
  };
}
