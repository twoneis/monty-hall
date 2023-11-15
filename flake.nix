{
  description = "A flake for development with zig.";

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
        name = "zig-devel";
        packages = with pkgs; [
          zig
          zls
        ];
        shellHook = ''export PS1="[\u@zig:\W]\$ "'';
      };
    };
}
