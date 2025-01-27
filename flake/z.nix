{ pkgs, ... }:
{
  imports = [
    ./z/utility/rofi.nix
    ./z/utility/lsd.nix
    ./z/utility/fastfetch.nix
    ./z/storage/static.nix
    ./z/service/remmina.nix
    ./z/service/mako.nix
    ./z/program/xdg.nix
    ./z/program/git.nix
    ./z/program/bun.nix
    ./z/monitor/btop.nix
    ./z/contact/ssh.nix
    ./z/command/foot.nix
    ./z/command/fish.nix
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
      allowUnfree = true;
    };
  };

  news = {
    display = "show";
  };

  home = {
    sessionVariables = { };
    packages = with pkgs; [
      httptoolkit
      obsidian

      brightnessctl
      pavucontrol
      libnotify
      xdg-utils
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
