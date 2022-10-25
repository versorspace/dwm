{
  description = "DWM: Dynamic Window Manager";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

  outputs = { self, nixpkgs }:
  let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in
  {
    packages.x86_64-linux.dwm = pkgs.callPackage ./default.nix {};
    devShells.x86_64-linux.default = pkgs.mkShell {
      packages = with pkgs; [
        xorg.libX11
	xorg.libXinerama
	xorg.libXft
      ];
    };
  };
}
