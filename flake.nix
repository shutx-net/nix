
{
  description = "My NixOS workstation";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

    unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

    # Herdr公式
    herdr.url = "github:herdrdev/herdr";
  };

  outputs = { nixpkgs, unstable, herdr, ... }:
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
        ];
      };
    };
}
