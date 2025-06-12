{lib, ...}: let
  # nameservers = [
  #   "8.8.8.8"
  #   "1.1.1.1"
  # ];
in {
  services = {
    resolved = {
      enable = true;
    };
    clatd = {
      enable = true;
    };
  };

  networking = {
    networkmanager = {
      wifi = {
        scanRandMacAddress = true;
        powersave = false;
        backend = "iwd";
      };
      enable = true;
    };

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
#TODO: make sure nameservers are properly set

