{
  outputs = {
    self,
    nixpkgs,
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
  in {
    packages = {
      ${system} = {
        textual-pragmata-pro = pkgs.stdenv.mkDerivation {
          pname = "textual-pragmata-pro";
          version = "1.0.0";
          src = ./ttf;

          phases = [
            "unpackPhase"
            "installPhase"
          ];

          installPhase = ''
            mkdir -p $out/share/fonts
            cp *.ttf $out/share/fonts
          '';

          meta = with pkgs.lib; {
            description = "textual-pragmata-pro";
            license = licenses.mit;
            platforms = platforms.linux;
          };
        };
      };
    };

    overlays = {
      default = final: prev: {
        textual-pragmata-pro = self.packages.${final.system}.textual-pragmata-pro;
      };
    };
  };

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };
  };

  description = "textual-pragmata-pro";
}
