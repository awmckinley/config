{
  description = "My macOS and NixOS system flake.";

  inputs = {
    base16 = {
      url = "github:SenchoPens/base16.nix?rev=c89c8123310257f3ddc04cc59aa4b5573c6d515f";
      inputs.fromYaml.follows = "fromYaml";
    };

    darwin = {
      url = "github:LnL7/nix-darwin?rev=6ab392f626a19f1122d1955c401286e1b7cf6b53";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
    };

    determinate = {
      url = "https://flakehub.com/f/DeterminateSystems/determinate/0.1.165";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    disko = {
      url = "https://flakehub.com/f/nix-community/disko/1.11.0";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flake-compat = {
      url = "https://flakehub.com/f/edolstra/flake-compat/1.0.1";
      flake = false;
    };

    flake-utils = {
      url = "https://flakehub.com/f/numtide/flake-utils/0.1.102";
      inputs.systems.follows = "systems";
    };

    fromYaml = {
      url = "github:SenchoPens/fromYaml?rev=106af9e2f715e2d828df706c386a685698f3223b";
      flake = false;
    };

    home-manager = {
      url = "github:nix-community/home-manager?rev=148a6b55651ac794f5c20bbd76780b4d8fed4334";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
    };

    nixos-wsl = {
      url = "github:nix-community/NixOS-WSL?rev=63c3b4ed1712a3a0621002cd59bfdc80875ecbb0";
      inputs = {
        flake-compat.follows = "flake-compat";
        nixpkgs.follows = "nixpkgs";
      };
    };

    nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/0.2411.714685";
    nixpkgs-unstable.url = "https://flakehub.com/f/DeterminateSystems/nixpkgs-weekly/0.1.754508";
    nur.url = "github:nix-community/NUR?rev=6d40a1f2e2fe9e912497232558012e72ff862897";
    systems.url = "github:nix-systems/default?rev=da67096a3b9bf56a91d16901293e51ba5b49a27e";

    treefmt = {
      url = "github:numtide/treefmt-nix?rev=3a92dc5faaec365df9070d975775b8b7c68d0d0d";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    vscode-extensions = {
      url = "github:nix-community/nix-vscode-extensions?rev=2063542a934dd15fa21c6a60fb77bf93794187ea";
      inputs = {
        flake-compat.follows = "flake-compat";
        flake-utils.follows = "flake-utils";
        nixpkgs.follows = "nixpkgs";
      };
    };

    zig = {
      url = "github:mitchellh/zig-overlay?rev=efff314a4daabec1de625a1780e774fdaea50605";
      inputs = {
        flake-compat.follows = "flake-compat";
        flake-utils.follows = "flake-utils";
        nixpkgs.follows = "nixpkgs";
      };
    };
  };

  outputs =
    inputs@{
      base16,
      darwin,
      determinate,
      disko,
      home-manager,
      nixos-wsl,
      nixpkgs,
      nixpkgs-unstable,
      treefmt,
      ...
    }:
    let
      forAllSystems = nixpkgs.lib.genAttrs nixpkgs.lib.systems.flakeExposed;
      treefmtEval = forAllSystems (
        system: treefmt.lib.evalModule nixpkgs.legacyPackages.${system} ./treefmt.nix
      );
    in
    {
      formatter = forAllSystems (system: treefmtEval.${system}.config.build.wrapper);

      packages = forAllSystems (system: {
        disko = disko.packages.${system}.disko;
      });

      # run: nix-darwin switch --flake "$(pwd)"
      darwinConfigurations = {
        krypton = darwin.lib.darwinSystem rec {
          system = "aarch64-darwin";
          modules = [
            ./hosts/krypton
          ];
          specialArgs = {
            inherit inputs;
            desktop = "aerospace";
            isDarwin = true;
            isLinux = false;
            isWSL = false;
            pkgsUnstable = nixpkgs-unstable.legacyPackages.${system};
            remoteDesktop = false;
          };
        };

        molybdenum = darwin.lib.darwinSystem rec {
          system = "aarch64-darwin";
          modules = [
            ./hosts/molybdenum
          ];
          specialArgs = {
            inherit inputs;
            desktop = "aerospace";
            isDarwin = true;
            isLinux = false;
            isWSL = false;
            pkgsUnstable = nixpkgs-unstable.legacyPackages.${system};
            remoteDesktop = true;
          };
        };
      };

      nixosConfigurations = {
        niobium = nixpkgs.lib.nixosSystem rec {
          system = "x86_64-linux";
          modules = [
            ./hosts/niobium
          ];
          specialArgs = {
            inherit inputs;
            desktop = "i3";
            isDarwin = false;
            isLinux = true;
            isWSL = false;
            pkgsUnstable = nixpkgs-unstable.legacyPackages.${system};
            remoteDesktop = true;
          };
        };

        nixos = nixpkgs.lib.nixosSystem rec {
          system = "x86_64-linux";
          modules = [
            ./hosts/nixos
          ];
          specialArgs = {
            inherit inputs;
            desktop = "i3";
            isDarwin = false;
            isLinux = true;
            isWSL = true;
            pkgsUnstable = nixpkgs-unstable.legacyPackages.${system};
            remoteDesktop = false;
          };
        };
      };
    };
}
