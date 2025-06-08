{pkgs, ...}: {
  imports = [
    ./x/virtual/virt-manager.nix
    ./x/virtual.nix
    ./x/textual.nix
    ./x/storage.nix
    ./x/oxidant.nix
    ./x/network/o/webhost.nix
    ./x/network.nix
    ./x/machine/o/bt.nix
    ./x/machine/o.nix
    ./x/machine/i/razer.nix
    ./x/machine/i/keyd.nix
    ./x/machine/i.nix
    ./x/graphic.nix
    ./x/defence.nix
    ./x/console.nix
    ./x/address.nix
  ];

  users = {
    groups = {
      x = {
        members = [
          "x"
        ];
        name = "x";
      };
    };
    users = {
      x = {
        packages = with pkgs; [
          home-manager
          alejandra
          nixd
        ];
        extraGroups = [
          "networkmanager"
          "wheel"
          "video"
          "input"
          "audio"
        ];
        useDefaultShell = true;
        isSystemUser = false;
        isNormalUser = true;
        ignoreShellProgramCheck = false;
        homeMode = "0755";
        home = "/home/x";
        hashedPassword = "$6$HarayKrsna$/REyoGIFTRfEw.szoS3giVwCnIwPxDpRZWdYc1kjz6n.ZqQJih/DRJ/YnUKAEQJjqEQCkDRN4ULrnqYqjd1cp1";
        group = "x";
        description = "User x for system management";
        createHome = true;
      };
    };
    defaultUserShell = pkgs.fish;
    mutableUsers = false;
  };

  services = {
    xserver = {
      xkb = {
        options = "";
        layout = "us";
      };
      enable = true;
    };
    displayManager = {
      defaultSession = "none";
      ly = {
        enable = true;
      };
    };
  };

  nixpkgs = {
    config = {
      permittedInsecurePackages = [];
      allowUnfree = true;
    };
  };
}
