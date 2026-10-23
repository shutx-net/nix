
{
  description = "My NixOS workstation";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

    unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

    # Official Herdr flake
    herdr.url = "github:herdrdev/herdr";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, unstable, herdr, home-manager, ... }:
    let
      system = "x86_64-linux";

      pkgsUnstable = import unstable {
        inherit system;
        config.allowUnfree = true;
      };
    in
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        inherit system;

        specialArgs = {
          inherit pkgsUnstable;
          herdrPkg = herdr.packages.${system}.default;
        };

        modules = [
          ./configuration.nix
          ./apps.nix

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            # Back up existing files instead of failing when they are in the way
            home-manager.backupFileExtension = "bak";
            home-manager.users.shutx = ./home.nix;
          }
        ];
      };
    };
}
