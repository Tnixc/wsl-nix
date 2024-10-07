{ config, pkgs, ... }: {
  home.username = "tnixc";
  home.homeDirectory = "/home/tnixc";
  home.stateVersion = "23.11";

  programs.home-manager.enable = true;

  imports = [
    ./modules/zsh.nix
    ./modules/packages.nix
    ./modules/git.nix
    ./modules/nix-config/home/programs/starship.nix
  ];
    home.file.".config/nvim" = {
    source = ./modules/nix-config/home/programs/nvim/src;
    recursive = true; # Ensures that the entire directory is linked/copied
  };
}

