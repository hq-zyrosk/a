{
  services = {
    tor = {
      client = {
        dns = {
          enable = true;
        };
        enable = true;
      };
      enable = true;
    };
    resolved = {
      enable = true;
    };
    clatd = {
      enable = true;
    };
  };

  networking = {
    networkmanager = {
      enable = false;
    };
    wireless = {
      enable = true;
    };
    nftables = {
      enable = true;
    };
    firewall = {
      enable = false;
    };

    hostName = "x";
  };
}
