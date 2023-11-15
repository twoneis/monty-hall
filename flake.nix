{
  description = "A flake for development with rust.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
      };
    in {
      devShell.x86_64-linux = pkgs.mkShell {
        name = "rust-devel";
        packages = with pkgs; [
          rust-analyzer
          rustup
        ];
        shellHook = ''
          export PS1="[\u@monty-hall:\W]\$ "
          rustup default stable
        '';
      };
    };
}
