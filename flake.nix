{
  description = "DWM: Dynamic Window Manager";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.dwm = nixpkgs.legacyPackages.x86_64-linux.callPackage ./default.nix;
  };
}
