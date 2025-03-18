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
        pointer-dot-red = pkgs.stdenv.mkDerivation {
          pname = "pointer-dot-red";
          version = "1.1.1";
          src = ./svg;

          buildInputs = [
            pkgs.hyprcursor
          ];

          installPhase = ''
            mkdir           -p                   $out/share/icons
            hyprcursor-util --create ./ --output $out/share/icons
          '';

          meta = with pkgs.lib; {
            description = "pointer-dot-red";
            license = licenses.mit;
            platforms = platforms.linux;
          };
        };
      };
    };

    overlays = {
      default = final: prev: {
        pointer-dot-red = self.packages.${final.system}.pointer-dot-red;
      };
    };
  };

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };
  };

  description = "pointer-dot-red";
}
