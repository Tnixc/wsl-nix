{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    neovim
    lazygit
    eza
    zoxide
    nodejs
    bun
    gh
    gnumake
    btop
  ];
}

