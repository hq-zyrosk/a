{
  outputs = {
    treefmt-nix,
    textual-pragmata-pro,
    pointer-dot-red,
    nixpkgs,
    nix-vscode-extensions,
    home-manager,
    fenix,
    ...
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
  in {
    packages = {
      ${system} = {
        homeConfigurations = {
          "a@x" = home-manager.lib.homeManagerConfiguration {
            extraSpecialArgs = {};
            modules = [
              {
                nixpkgs.overlays = [
                  nix-vscode-extensions.overlays.default
                  fenix.overlays.default

                  textual-pragmata-pro.overlays.default
                  pointer-dot-red.overlays.default
                ];
              }

              ./flake/z.nix
            ];
            pkgs = pkgs;
          };
        };
        homeManagerModules = {};

        nixosConfigurations = {
          x = nixpkgs.lib.nixosSystem {
            inherit system;

            modules = [
              {
                nixpkgs.overlays = [
                  textual-pragmata-pro.overlays.default
                ];
              }

              home-manager.nixosModules.home-manager

              /etc/nixos/hardware-configuration.nix
              ./flake/x.nix
            ];
          };
        };
        nixosModules = {};
      };
    };

    formatter = {
      ${system} = (treefmt-nix.lib.evalModule pkgs ./treefmt.nix).config.build.wrapper;
    };

    nix = {
      nixPath = [
        "nixpkgs=${nixpkgs}"
      ];
    };
  };

  inputs = {
    textual-pragmata-pro = {
      url = "path:./textual-pragmata-pro";
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
    };

    pointer-dot-red = {
      url = "path:./pointer-dot-red";
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
    };

    nix-vscode-extensions = {
      url = "github:nix-community/nix-vscode-extensions/master";
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
    };

    fenix = {
      url = "github:nix-community/fenix";
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
    };

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
    };

    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
    };

    nixpkgs = {
      url = "github:NixOS/nixpkgs/staging-next";
    };
  };

  description = "NixOS";
}
