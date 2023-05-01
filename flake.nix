{
  description = "A Nix-flake-based development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/release-22.11";
  };

  outputs = { self, nixpkgs}:
    let
      overlays = [ ];

      # Systems supported
      allSystems = [
        "x86_64-linux" # 64-bit Intel/AMD Linux
        "aarch64-linux" # 64-bit ARM Linux
        "x86_64-darwin" # 64-bit Intel macOS
        "aarch64-darwin" # 64-bit ARM macOS
      ];

      forAllSystems = f: nixpkgs.lib.genAttrs allSystems (system: f {
        pkgs = import nixpkgs { inherit overlays system; };
      });

    in
    {
      templates = {

        rust-dev = {
          path = ./nix/templates/rust/dev;
          description = "Rust dev environment template for Zero to Nix";
        };

      #  rust-pkg = {
      #    path = ./nix/templates/rust/pkg/;
      #    description = "Rust package starter template for Zero to Nix";
      #  };

      };
    };
}

