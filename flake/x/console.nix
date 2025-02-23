{ pkgs, ... }:
let
  terminus_font = pkgs.terminus_font;
  no_greeting = ''
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
      shellAliases = { };
      shellAbbrs = { };
      interactiveShellInit = no_greeting;
      loginShellInit = no_greeting;
      promptInit = no_greeting;
      shellInit = no_greeting;
      useBabelfish = false;
      enable = true;
    };
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
