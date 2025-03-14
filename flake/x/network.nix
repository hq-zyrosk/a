{lib, ...}: {
  services = {
    tor = {
      torsocks = {
        enable = true;
      };
      settings = {
        MapAddress = [
          "*.onion 10.192.0.0"
          "*.exit 10.192.0.0"
        ];
        DNSPort = [
          {
            addr = "127.0.0.1";
            port = 9053;
          }
        ];
        AutomapHostsSuffixes = [
          ".onion"
          ".exit"
        ];
        VirtualAddrNetworkIPv4 = "10.192.0.0/10";
        AutomapHostsOnResolve = true;
      };
      client = {
        socksListenAddress = {
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
      extraConfig = ''
        DNSStubListener=yes
        DNS=127.0.0.1:9053
        Domains=~onion
      '';
      enable = true;
    };
  };

  networking = {
    networkmanager = {
      enable = true;
    };
    interfaces = {
      "usb0" = {
        useDHCP = true;
      };
    };

    nameservers = [
      "127.0.0.1"
    ];
    nftables = {
      enable = true;
    };
    firewall = {
      enable = false;
    };

    usePredictableInterfaceNames = true;
    hostName = lib.mkForce "x";
  };
}
