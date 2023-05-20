{
  description = "Home Manager configuration";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-22.11";
    nixpkgs-unstable.url = "nixpkgs";
    home-manager = {
      url = "home-manager/release-22.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, nixpkgs-unstable, home-manager, ... }:
    let
      system = "x86_64-darwin";
      unstable = nixpkgs-unstable.legacyPackages.${system};
      overlays = final: prev: {
        yt-dlp = unstable.yt-dlp;
      };
      pkgs = import nixpkgs {
        inherit system;
        overlays = [ overlays ];
      };
    in
    {
      homeConfigurations.mac = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [ ./home.nix ];
      };

      formatter.${system} = pkgs.nixpkgs-fmt;
    };
}
