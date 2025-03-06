{
  outputs =
    {
      textual-pragmata-pro,
      pointer-dot-red,
      nix-vscode-extensions,
      home-manager,
      nixpkgs,
      nixos-hardware,
      ...
    }:
    let
      type = "x86_64-linux";
    in
    {
      homeConfigurations = {
        "z@x" = home-manager.lib.homeManagerConfiguration {
          extraSpecialArgs = {
            extensions = nix-vscode-extensions.extensions.${type};
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

      formatter = {
        ${type} = nixpkgs.legacyPackages.${type}.nixfmt-rfc-style;
      };
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

    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };

    nixos-hardware = {
      url = "github:NixOS/nixos-hardware/master";
    };
  };

  description = "NixOS";
}
