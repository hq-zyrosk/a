{pkgs, ...}: {
  nixpkgs = {
    config = {
      input-fonts = {
        acceptLicense = true;
      };
    };
  };

  fonts = {
    packages = with pkgs; [
      noto-fonts-color-emoji
      textual-pragmata-pro

      # google-fonts
      # dejavu_fonts
      # corefonts
    ];
    fontconfig = {
      subpixel = {
        lcdfilter = "none";
        rgba = "none";
      };
      hinting = {
        autohint = false;
        style = "full";
        enable = true;
      };
      useEmbeddedBitmaps = false;
      enable = true;
      cache32Bit = false;
      antialias = true;
    };
    enableDefaultPackages = false;
  };
}
