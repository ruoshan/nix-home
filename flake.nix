{
  description = "Home Manager configuration";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-23.05";
    nixpkgs-unstable.url = "nixpkgs";
    home-manager = {
      url = "home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, nixpkgs-unstable, home-manager, ... }:
    let
      system = "x86_64-darwin";
      unstable = nixpkgs-unstable.legacyPackages.${system};
      overlays = final: prev: {
        yt-dlp = unstable.yt-dlp;
        lima-bin = unstable.lima-bin;
        colima = unstable.colima;
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
