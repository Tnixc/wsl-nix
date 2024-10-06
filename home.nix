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
    home.file.".config/nvim" = {
    source = ./modules/nvim;
    recursive = true; # Ensures that the entire directory is linked/copied
  };
}

