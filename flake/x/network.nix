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
        # IPv6 NAT table for DNS redirection (if IPv6 is used)
        table ip6 nat {
          chain prerouting {
            type nat hook prerouting priority -100; policy accept;

            # Redirect IPv6 DNS queries to Tor's DNS
            ip6 daddr != ::1 udp dport 53 dnat to [::1]:9053
            ip6 daddr != ::1 tcp dport 53 dnat to [::1]:9053
          }

          chain output {
            type nat hook output priority -100; policy accept;

            # Redirect local IPv6 DNS queries
            ip6 daddr != ::1 udp dport 53 dnat to [::1]:9053
            ip6 daddr != ::1 tcp dport 53 dnat to [::1]:9053
          }
        }

        # IPv4 NAT table for DNS redirection
        table ip nat {
          chain prerouting {
            type nat hook prerouting priority -100; policy accept;

            # Redirect all DNS queries to Tor's DNS resolver
            ip daddr != 127.0.0.1 udp dport 53 dnat to 127.0.0.1:9053
            ip daddr != 127.0.0.1 tcp dport 53 dnat to 127.0.0.1:9053
          }

          chain output {
            type nat hook output priority -100; policy accept;

            # Redirect local DNS queries to Tor's DNS resolver
            ip daddr != 127.0.0.1 udp dport 53 dnat to 127.0.0.1:9053
            ip daddr != 127.0.0.1 tcp dport 53 dnat to 127.0.0.1:9053
          }
        }

        table inet filter {
          # Define custom counter
          counter dns_queries_counter {}

          chain input {
            type filter hook input priority 0; policy drop;

            # Allow loopback
            iifname lo accept

            # Connection tracking
            ct state invalid drop
            ct state established,related accept

            # ICMP and ICMPv6 for diagnostic purposes (optional, can be removed for stricter security)
            ip protocol icmp icmp type { echo-request, destination-unreachable, time-exceeded } accept
            ip6 nexthdr icmpv6 icmpv6 type { echo-request, destination-unreachable, time-exceeded, packet-too-big, parameter-problem, nd-router-advert, nd-neighbor-solicit, nd-neighbor-advert } accept

            # Allow SSH but rate limit to prevent brute force
            tcp dport 22 ct state new limit rate 5/minute accept

            # Log and count dropped packets (useful for debugging)
            counter log prefix "nftables dropped: "

            # Default drop with reject message
            reject with icmp type port-unreachable
          }

          chain forward {
            type filter hook forward priority 0; policy drop;
          }

          chain output {
            type filter hook output priority 0; policy accept;

            # Count DNS queries for monitoring
            udp dport 53 counter name dns_queries_counter
            tcp dport 53 counter name dns_queries_counter
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
