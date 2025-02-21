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
      "FFA3A3"
      "00DA00"
      "C2C200"
      "B5B5FF"
      "FF96FF"
      "00D1D1"
      "BCBCBC"

      "FFEFDF"
      "FFA3A3"
      "00DA00"
      "C2C200"
      "B5B5FF"
      "FF96FF"
      "00D1D1"
      "BCBCBC"
    ];
    earlySetup = true;
    enable = true;
  };
}
