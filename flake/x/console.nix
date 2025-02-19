{ pkgs, ... }:
{
  services = {
    getty = {
      extraArgs = [
        "--nohostname"
      ];
    };
  };

  console = {
    packages = with pkgs; [
      terminus_font
    ];
    keyMap = "us";
    font = "${pkgs.terminus_font}/share/consolefonts/ter-v16n.psf.gz";
    colors = [
      "FFEFDF"
      "C90000"
      "00FF00"
      "666600"
      "D9D9FF"
      "6F006F"
      "00F4F4"
      "898989"

      "FFEFDF"
      "C90000"
      "00FF00"
      "666600"
      "D9D9FF"
      "6F006F"
      "00F4F4"
      "898989"
    ];
    earlySetup = true;
    enable = true;
  };
}
