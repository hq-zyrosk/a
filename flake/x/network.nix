{ lib, ... }:
{
  services = {
    tor = {
      settings = {
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
      '';
      enable = true;
    };
  };

  networking = {
    networkmanager = {
      dns = lib.mkForce "none";
      enable = true;
    };
    nftables = {
      enable = true;
    };
    nameservers = [
      "127.0.0.1"
      "1.1.1.1"
    ];
    firewall = {
      enable = false;
    };
    usePredictableInterfaceNames = true;
    hostName = lib.mkForce "x";
  };
}
