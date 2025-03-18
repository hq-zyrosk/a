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
      (fenix.latest.withComponents [
        "rust-analyzer-preview"
        "llvm-tools-preview"
        "rustfmt-preview"
        "miri-preview"
        "toolchain"

        "rust-analysis"
        "rust-docs"
        "rust-src"
        "rust-std"
        "rustc"

        "clippy-preview"
        "cargo"
      ])

      android-studio-tools
      android-studio
      android-tools

      brightnessctl
      pavucontrol
      obsidian

      rust-parallel
      rustscan
      rustic

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
