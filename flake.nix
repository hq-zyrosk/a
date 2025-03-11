{
  # treefmtEval = eachSystem (pkgs: treefmt-nix.lib.evalModule pkgs ./treefmt.nix);
  outputs = {
    treefmt-nix,
    textual-pragmata-pro,
    systems,
    pointer-dot-red,
    nixpkgs,
    nixos-hardware,
    nix-vscode-extensions,
    home-manager,
    flake-utils,
    fenix,
    ...
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
  in {
    homeConfigurations = {
      "z@x" = home-manager.lib.homeManagerConfiguration {
        extraSpecialArgs = {
          extensions = nix-vscode-extensions.extensions.${system};
          fenix = fenix.packages.${system};
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
                package = pointer-dot-red.packages.${system}.pointer-dot-red;
                name = "dot-red";
              };
            };
          }
        ];
        pkgs = pkgs;
      };
    };
    homeManagerModules = {};

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
                textual-pragmata-pro.packages.${system}.textual-pragmata-pro
              ];
            };
          }
        ];
        system = system;
      };
    };
    nixosModules = {};

    formatter = {
      ${system} = pkgs.nixfmt-rfc-style;
    };

    # formatter = eachSystem (pkgs: treefmtEval.${pkgs.system}.config.build.wrapper);

    # checks = eachSystem (pkgs: {
    #   formatting = treefmtEval.${pkgs.system}.config.build.check self;
    # });
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

    flake-utils = {
      url = "github:numtide/flake-utils";
      inputs = {
        systems = {
          follows = "systems";
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

    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };

    nixos-hardware = {
      url = "github:NixOS/nixos-hardware/master";
    };
  };

  description = "NixOS";
}
