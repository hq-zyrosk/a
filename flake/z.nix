{pkgs, ...}: {
  imports = [
    ./z/utility/waybar.nix
    ./z/utility/zellij.nix
    ./z/utility/rofi.nix
    ./z/terminal/alacritty.nix
    ./z/storage/static.nix
    ./z/service/remmina.nix
    ./z/service/mako.nix
    ./z/program/xdg.nix
    ./z/program/git.nix
    ./z/program/bun.nix
    ./z/monitor/btop.nix
    ./z/contact/ssh.nix
    ./z/codedit/vscode.nix
    ./z/channel/hyprland.nix
    ./z/browser/firefox.nix
    ./z/browser/chrome.nix
  ];

  xdg = {
    portal = {
      config = {
        common = {
          default = [
            "hyprland"
          ];
        };
      };
      extraPortals = with pkgs; [
        xdg-desktop-portal-hyprland
        xdg-desktop-portal-gtk
        xdg-desktop-portal
      ];
      enable = true;
    };
  };

  systemd = {
    user = {
      startServices = true;
    };
  };

  nixpkgs = {
    config = {
      android_sdk = {
        accept_license = true;
      };
      allowUnfree = true;
    };
  };

  news = {
    display = "show";
  };

  home = {
    shell = {
      enableShellIntegration = true;
    };
    pointerCursor = {
      hyprcursor = {
        size = 8;
        enable = true;
      };
      package = pkgs.pointer-dot-red;
      name = "dot-red";
    };
    packages = with pkgs; [
      (fenix.combine [
        fenix.targets.x86_64-pc-windows-gnu.latest.rust-std

        fenix.latest.rust-analyzer-preview
        fenix.latest.llvm-tools-preview
        fenix.latest.rustfmt-preview
        fenix.latest.miri-preview
        fenix.latest.toolchain

        fenix.latest.rust-analysis
        fenix.latest.rust-docs
        fenix.latest.rust-src
        fenix.latest.rust-std
        fenix.latest.rustc

        fenix.latest.clippy-preview
        fenix.latest.cargo
      ])

      brightnessctl
      pavucontrol
      obsidian

      alejandra
      nil
      gcc
    ];
    language = {};
    keyboard = {
      options = [];
      layout = "us";
    };
    activation = {};
    username = "x";
    stateVersion = "24.11";
    homeDirectory = "/home/x";
    enableNixpkgsReleaseCheck = false;
    enableDebugInfo = true;
  };

  fonts = {
    fontconfig = {
      defaultFonts = {
        monospace = [
          "PragmataPro Mono Liga"
        ];
        sansSerif = [
          "PragmataPro Mono"
        ];
        serif = [
          "PragmataPro Mono"
        ];
        emoji = [
          "Noto Color Emoji"
        ];
      };
      enable = true;
    };
  };
}
