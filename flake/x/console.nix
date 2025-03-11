{pkgs, ...}: let
  terminus_font = pkgs.terminus_font;
in {
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
        "ls" = "eza --all --header --hyperlink --long";
      };
      shellAbbrs = {};
      interactiveShellInit = ''
        set fish_greeting
      '';
      loginShellInit = "";
      promptInit = "";
      shellInit = "";
      useBabelfish = false;
      enable = true;
    };
  };

  environment = {
    defaultPackages = with pkgs; [
      fishPlugins.sponge
      fishPlugins.puffer
      curlHTTP3

      libimobiledevice
      ifuse

      alejandra
      nil

      unzip
      just
      file
      eza
    ];
    systemPackages = with pkgs; [
      watchexec
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
      "000000"
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
      "FFFFFF"
    ];
    earlySetup = true;
    enable = true;
  };
}
