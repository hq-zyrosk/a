{
  services = {
    pipewire = {
      wireplumber = {
        enable = true;
      };
      pulse = {
        enable = true;
      };
      audio = {
        enable = true;
      };
      raopOpenFirewall = true;
      enable = true;
    };
    blueman = {
      enable = true;
    };
    avahi = {
      enable = true;
    };
  };

  security = {
    rtkit = {
      enable = true;
    };
  };

  hardware = {
    bluetooth = {
      settings = {
        General = {
          FastConnectable = true;
          Experimental = true;
          ControllerMode = "dual";
          Enable = "Source,Sink,Media,Socket";
        };
        Audio = {
          Codec = "LDAC";
        };
      };
      powerOnBoot = true;
      enable = true;
    };
  };
}
