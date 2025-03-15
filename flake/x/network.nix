{
  # Add this section to enforce DNS through Tor for networkd
  systemd = {
    network = {
      enable = true;
      networks."40-wireless" = {
        matchConfig = {
          Name = "w*";
        };
        networkConfig = {
          DHCP = "yes";
          DNS = "127.0.0.1:9053";
          DNSDefaultRoute = true;
        };
        linkConfig = {
          RequiredForOnline = "carrier";
        };
        dhcpV4Config = {
          UseDNS = false;
        };
      };
      networks."40-ethernet" = {
        matchConfig = {
          Name = "e* usb*";
        };
        networkConfig = {
          DHCP = "yes";
          DNS = "127.0.0.1:9053";
          DNSDefaultRoute = true;
        };
        linkConfig = {
          RequiredForOnline = "carrier";
        };
        dhcpV4Config = {
          UseDNS = false;
        };
      };
    };
  };

  services = {
    tor = {
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
      fallbackDns = [
        "127.0.0.1:9053"
      ];
      extraConfig = ''
        DNSStubListener=no
        DNS=127.0.0.1:9053
        DNSOverTLS=no
        Domains=~.
      '';
      enable = true;
    };
  };

  networking = {
    networkmanager = {
      enable = false;
    };
    nameservers = [
      "127.0.0.1"
    ];
    interfaces = {
      usb0 = {
        useDHCP = true;
      };
    };

    wireless = {
      enable = true;
    };
    nftables = {
      enable = true;
      ruleset = ''
        table ip nat {
          chain prerouting {
            type nat hook prerouting priority 0; policy accept;
            # Redirect all DNS requests to Tor DNSPort
            ip daddr != 127.0.0.1 udp dport 53 dnat to 127.0.0.1:9053
            ip daddr != 127.0.0.1 tcp dport 53 dnat to 127.0.0.1:9053
          }

          chain output {
            type nat hook output priority -100; policy accept;

            # Redirect outgoing DNS requests to Tor
            ip daddr != 127.0.0.1 udp dport 53 dnat to 127.0.0.1:9053
            ip daddr != 127.0.0.1 tcp dport 53 dnat to 127.0.0.1:9053
          }
        }

        table inet filter {
          chain input {
            type filter hook input priority 0; policy drop;

            # Allow loopback
            iifname lo accept

            # Allow established/related connections
            ct state established,related accept

            # Allow SSH (adjust as needed)
            tcp dport 22 accept

            # Drop everything else
            reject with icmp type port-unreachable
          }

          chain forward {
            type filter hook forward priority 0; policy drop;
          }

          chain output {
            type filter hook output priority 0; policy accept;
          }
        }
      '';
    };
    firewall = {
      enable = true;
    };

    usePredictableInterfaceNames = true;
    useNetworkd = true;
    hostName = "x";
  };
}
