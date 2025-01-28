{ lib, ... }:
{
  services = {
    tor = {
      settings = {
        DNSPort = [
          {
            addr = "127.0.0.1";
            port = 53;
          }
        ];
        VirtualAddrNetworkIPv4 = "10.192.0.0/10";
        AutomapHostsSuffixes = [
          ".onion"
          ".exit"
        ];
        AutomapHostsOnResolve = true;
      };
      client = {
        transparentProxy = {
          enable = true;
        };
        socksListenAddress = {
          port = 9050;
          addr = "127.0.0.1";
        };
        dns = {
          enable = true;
        };
        enable = true;
      };
      enable = true;
    };
  };

  networking = {
    networkmanager = {
      enable = true;
    };
    nftables = {
      enable = true;
    };
    nameservers = [
      "8.8.8.8"
      "1.1.1.1"
    ];
    firewall = {
      allowedTCPPorts = [
        443
        80
        22
      ];
      enable = true;
    };
    usePredictableInterfaceNames = true;
    hostName = lib.mkForce "x";
  };
}
