{ config, pkgs, ... }: {
  home.username = "tnixc";
  home.homeDirectory = "/home/tnixc";
  home.stateVersion = "23.11";

  programs.home-manager.enable = true;

  imports = [
    ./modules/zsh.nix
    ./modules/starship.nix
    ./modules/packages.nix
    ./modules/git.nix
  ];
}

