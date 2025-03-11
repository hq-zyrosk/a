{
  outputs =
    {
      textual-pragmata-pro,
      pointer-dot-red,
      nix-vscode-extensions,
      home-manager,
      fenix,
      nixpkgs,
      nixos-hardware, systems, treefmt-nix, self,
      ...
    }:
    let
      treefmtEval = eachSystem (pkgs: treefmt-nix.lib.evalModule pkgs ./treefmt.nix);
      eachSystem = f: nixpkgs.lib.genAttrs (import systems) (system: f nixpkgs.legacyPackages.${system});
      type = "x86_64-linux";
    in
    {
      homeConfigurations = {
        "z@x" = home-manager.lib.homeManagerConfiguration {
          extraSpecialArgs = {
            extensions = nix-vscode-extensions.extensions.${type};
            fenix = fenix.packages.${type};
          };
          modules = [
            ./flake/z.nix
            {
              home = {
                pointerCursor = {
                  hyprcursor = {
                    size = 5;
                    enable = true;
                  };
                  package = pointer-dot-red.packages.${type}.pointer-dot-red;
                  name = "dot-red";
                };
              };
            }
          ];
          pkgs = nixpkgs.legacyPackages.${type};
        };
      };
      homeManagerModules = { };

      nixosConfigurations = {
        x = nixpkgs.lib.nixosSystem {
          modules = [
            home-manager.nixosModules.home-manager
            nixos-hardware.nixosModules.apple-t2
            /etc/nixos/hardware-configuration.nix
            ./flake/x.nix
            {
              fonts = {
                packages = [
                  textual-pragmata-pro.packages.${type}.textual-pragmata-pro
                ];
              };
            }
          ];
          system = type;
        };
      };
      nixosModules = { };

      # formatter = {
      #   ${type} = nixpkgs.legacyPackages.${type}.nixfmt-rfc-style;
      # };

      formatter = eachSystem (pkgs: treefmtEval.${pkgs.system}.config.build.wrapper);
      
      checks = eachSystem (pkgs: {
        formatting = treefmtEval.${pkgs.system}.config.build.check self;
      });
    };

  inputs = {
    textual-pragmata-pro = {
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
      url = "path:./textual-pragmata-pro";
    };

    pointer-dot-red = {
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
      url = "path:./pointer-dot-red";
    };

    nix-vscode-extensions = {
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
      url = "github:nix-community/nix-vscode-extensions/master";
    };

    home-manager = {
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
      url = "github:nix-community/home-manager/master";
    };

    fenix = {
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
      url = "github:nix-community/fenix";
    };

    treefmt-nix = {
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
      url = "github:numtide/treefmt-nix";
    };

    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };

    nixos-hardware = {
      url = "github:NixOS/nixos-hardware/master";
    };
  };

  description = "NixOS";
}
