{lib, ...}: {
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
    dbus = {
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

    interfaces.enp2s0f1u1.useDHCP = true;

    wireless = {
      enable = false;
    };
    nftables = {
      enable = false;
    };
    firewall = {
      enable = false;
    };

    usePredictableInterfaceNames = true;
    useDHCP = lib.mkDefault true;
    hostName = "x";
  };
}
