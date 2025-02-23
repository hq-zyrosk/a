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
        packages = with pkgs; [
          # shadowsocks-rust
          # proxychains
          # proxify

          nodejs_latest
          home-manager
        ];
        extraGroups = [
          "wheel"
          "video"
          "input"
          "audio"
        ];
        useDefaultShell = true;
        isNormalUser = true;
        hashedPassword = "$6$HarayKrsna$/REyoGIFTRfEw.szoS3giVwCnIwPxDpRZWdYc1kjz6n.ZqQJih/DRJ/YnUKAEQJjqEQCkDRN4ULrnqYqjd1cp1";
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
      permittedInsecurePackages = [ ];
    };
  };

  environment = {
    defaultPackages = with pkgs; [
      watchexec
      curlHTTP3
    ];
    systemPackages = with pkgs; [
      libimobiledevice
      ifuse

      nixfmt-rfc-style
      nixd

      xdg-utils
      timelimit
      libnotify
      killall
      go-task
      unzip
      file
    ];
  };
}
