{ pkgs, ... }:
{
  imports = [
    ./z/utility/waybar.nix
    ./z/utility/rofi.nix
    ./z/terminal/alacritty.nix
    ./z/storage/static.nix
    ./z/service/wluma.nix
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
          default = [ "hyprland" ];
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
    packages = with pkgs; [
      jetbrains-toolbox
      jetbrains.clion

      android-studio-tools
      android-studio
      android-tools

      brightnessctl
      pavucontrol
      obsidian

      rustup
      bacon

      gdb
      gcc
    ];
    language = { };
    keyboard = {
      options = [ ];
      layout = "us";
    };
    activation = { };
    username = "x";
    stateVersion = "24.11";
    homeDirectory = "/home/x";
    enableNixpkgsReleaseCheck = false;
    enableDebugInfo = true;
  };

  fonts = {
    fontconfig = {
      enable = true;
    };
  };
}

# lsb-release
# python314
# ninja
# gn

# clang-tools
# gnumake
# cmake
