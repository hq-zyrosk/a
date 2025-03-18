{lib, ...}: {
  systemd = {};

  system = {
    nixos = {
      tags = ["x"];
      variant_id = "x";
      label = "x";
    };
    stateVersion = "24.11";
  };

  swapDevices = lib.mkForce [];

  nix = {
    settings = {
      trusted-users = [
        "@wheel"
        "root"
      ];
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
  };

  boot = {
    tmp = {
      cleanOnBoot = true;
    };
    loader = {
      systemd-boot = {
        consoleMode = "max";
        configurationLimit = 4;
        enable = true;
      };
      efi = {
        canTouchEfiVariables = true;
      };
      timeout = 1;
    };
    kernelParams = ["acpi_backlight=video"];
    kernel = {
      sysctl = {
        "vm.swappiness" = 0;
      };
    };
    initrd = {
      network = {
        ssh = {
          hostKeys = [];
          enable = false;
        };
        enable = true;
      };
    };
    extraModprobeConfig = ''
      options hid_apple swap_fn_leftctrl=1
      options hid_apple fnmode=2
    '';
    readOnlyNixStore = false;
    isContainer = false;
  };
}
