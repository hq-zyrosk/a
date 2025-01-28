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

          go-task
          file
        ];
        isNormalUser = true;
        hashedPassword = "$6$HarayKrsna$/REyoGIFTRfEw.szoS3giVwCnIwPxDpRZWdYc1kjz6n.ZqQJih/DRJ/YnUKAEQJjqEQCkDRN4ULrnqYqjd1cp1";
      };
    };
    mutableUsers = false;
    defaultUserShell = pkgs.fish;
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

  programs = {
    fish = {
      interactiveShellInit = ''
        set pure_threshold_command_duration 4
        set pure_shorten_window_title_current_directory_length 4
        set pure_shorten_prompt_current_directory_length 4
        set pure_begin_prompt_with_current_directory true

        set pure_symbol_prefix_root_prompt "₹"
        set pure_symbol_container_prefix "¢"
        set pure_symbol_ssh_prefix "\$"
        set pure_symbol_prompt "/"

        set pure_show_prefix_root_prompt true
        set pure_show_system_time falsetext-size

        set pure_enable_single_line_prompt true
        set pure_enable_git false

        set fish_greeting
      '';
      enable = true;
    };
  };

  nixpkgs = {
    config = {
      permittedInsecurePackages = [ ];
    };
  };

  environment = {
    variables = {
      VCPKG_ROOT = "${pkgs.vcpkg}";
    };
    defaultPackages = with pkgs; [
      fishPlugins.pure
      curlHTTP3

      libimobiledevice
      ifuse

      home-manager
      nodejs_23

      clang-tools
      gnumake

      vcpkg-tool
      vcpkg

      gdb
      gcc
    ];
    systemPackages = with pkgs; [
      timelimit
      parallel
      libressl
      killall

      p7zip
      ldns

      nixfmt-rfc-style
      nixd
    ];
  };
}
