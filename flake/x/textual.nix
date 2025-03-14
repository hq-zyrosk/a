{pkgs, ...}: {
  fonts = {
    packages = with pkgs; [
      google-fonts
      dejavu_fonts
      corefonts
      mononoki
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
      useEmbeddedBitmaps = false;
      enable = true;
      cache32Bit = false;
      antialias = true;
    };
    enableDefaultPackages = false;
  };
}
