{
  outputs =
    { self, nixpkgs }:
    let
      pkgs = import nixpkgs { system = "x86_64-linux"; };
    in
    {
      packages.x86_64-linux.textual-pragmata-pro = pkgs.stdenv.mkDerivation {
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

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };
  };

  description = "textual-pragmata-pro";
}
