{lib, ...}: {
  services = {
    resolved = {
      enable = false;
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

    wireless = {
      iwd = {
        enable = true;
      };
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
