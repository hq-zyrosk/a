{ pkgs, ... }:
let
  terminus_font = pkgs.terminus_font;
  fish_init = ''
    set fish_greeting
  '';
in
{
  services = {
    getty = {
      extraArgs = [
        "--nohostname"
      ];
    };
  };

  programs = {
    fish = {
      vendor = {
        completions = {
          enable = true;
        };
        functions = {
          enable = true;
        };
        config = {
          enable = true;
        };
      };
      shellAliases = {
        "ls" = "eza";
      };
      shellAbbrs = { };
      interactiveShellInit = fish_init;
      loginShellInit = fish_init;
      promptInit = fish_init;
      shellInit = fish_init;
      useBabelfish = false;
      enable = true;
    };
  };

  environment = {
    defaultPackages = with pkgs; [
      fishPlugins.sponge
      fishPlugins.puffer

      libimobiledevice
      ifuse

      nixfmt-rfc-style
      nixd

      watchexec
      curlHTTP3

      unzip
      just
      file
      eza
    ];
    systemPackages = with pkgs; [
      xdg-utils
      timelimit
      libnotify
      killall
    ];
  };

  console = {
    packages = [
      terminus_font
    ];
    keyMap = "us";
    font = "${terminus_font}/share/consolefonts/ter-v16n.psf.gz";
    colors = [
      "5A5A5A"
      "FFC5C5"
      "00F500"
      "DBDB00"
      "CFCFFF"
      "FFBEFF"
      "00EBEB"
      "D3D3D3"

      "5A5A5A"
      "FFC5C5"
      "00F500"
      "DBDB00"
      "CFCFFF"
      "FFBEFF"
      "00EBEB"
      "D3D3D3"
    ];
    earlySetup = true;
    enable = true;
  };
}
