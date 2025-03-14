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
      monoid
      julia-mono
      jetbrains-mono
      input-fonts
      fira-code
      agave

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
