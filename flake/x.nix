{ pkgs, ... }:
{
  imports = [
    # ./a/virtual/virt-manager.nix
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
        members = [ "x" ];
        name = "x";
      };
    };
    extraUsers = {
      x = {
        extraGroups = [
          "wheel"
          "video"
          "input"
          "audio"
        ];
        useDefaultShell = true;
        packages = with pkgs; [
          # shadowsocks-rust
          # proxychains
          # proxify

          nodejs_latest
        ];
        isNormalUser = true;
        hashedPassword = "$6$HarayKrsna$/REyoGIFTRfEw.szoS3giVwCnIwPxDpRZWdYc1kjz6n.ZqQJih/DRJ/YnUKAEQJjqEQCkDRN4ULrnqYqjd1cp1";
      };
    };
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
      permittedInsecurePackages = [ ];
    };
  };

  environment = {
    defaultPackages = with pkgs; [
      home-manager

      brightnessctl
      pavucontrol

      xdg-utils
      libnotify
      curlHTTP3

      libimobiledevice
      ifuse

      nixfmt-rfc-style
      nixd
    ];
    systemPackages = with pkgs; [
      rust-parallel
      rustscan

      timelimit
      parallel
      libressl
      killall
      go-task
      unzip
      file
    ];
  };
}
