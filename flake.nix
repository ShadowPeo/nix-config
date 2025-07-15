{
  description = "Cross-platform system configuration flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, darwin }: {
    # Darwin configurations (macOS)
    darwinConfigurations = {
      # Will add specific host configurations here
    };
    
    # NixOS configurations (Linux)
    nixosConfigurations = {
      # Will add specific host configurations here
    };
    
    # Home Manager configurations
    homeConfigurations = {
      # Will add user configurations here
    };
  };
}
