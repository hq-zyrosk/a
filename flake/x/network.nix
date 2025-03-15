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
      fallbackDns = [
        "1.1.1.1:53"
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

    wireless = {
      enable = true;
    };
    nftables = {
      ruleset = ''
        table ip nat {
          chain prerouting {
            type nat hook prerouting priority 0; policy accept;

            ip daddr != 127.0.0.1 udp dport 53 dnat to 127.0.0.1:9053
            ip daddr != 127.0.0.1 tcp dport 53 dnat to 127.0.0.1:9053
          }

          chain output {
            type nat hook output priority -100; policy accept;

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
      enable = true;
    };
    firewall = {
      enable = false;
    };

    hostName = "x";
  };
}
