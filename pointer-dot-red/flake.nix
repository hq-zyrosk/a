{
  outputs =
    {
      self,
      nixpkgs,
    }:
    let
      pkgs = import nixpkgs { system = "x86_64-linux"; };
    in
    {
      packages.x86_64-linux.pointer-dot-red = pkgs.stdenv.mkDerivation {
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

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };
  };

  description = "pointer-dot-red";
}
