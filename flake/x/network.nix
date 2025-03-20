{
  services = {
    tor = {
      client = {
        socksListenAddress = {
          IsolateDestAddr = true;
          addr = "127.0.0.1";
          port = 9050;
        };
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
      enable = true;
    };
    nameservers = [
      "8.8.8.8"
      "1.1.1.1"
    ];
    resolvconf = {};
    nftables = {
      enable = true;
    };
    firewall = {
      enable = true;
    };

    hostName = "x";
  };
}
