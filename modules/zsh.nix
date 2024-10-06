{ pkgs, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    historySubstringSearch.enable = true;
    syntaxHighlighting.enable = true;
    initExtra = ''
      autoload -Uz compinit && compinit
      zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

        gc() {
          git commit -m "$1"
        }

        export EDITOR=nvim

        export FZF_DEFAULT_OPTS="
        --color=fg:7,hl:4
        --color=fg+:15,hl+:6
        --color=info:2,prompt:1,pointer:5
        --color=marker:2,spinner:5,header:4"

        bindkey '^[h' backward-word
        bindkey '^[l' forward-word

        eval "$(zoxide init zsh)"
    '';
  };

  home.shellAliases = {
    a = "nvim";
    vim = "nvim";
    vi = "nvim";
    q = "exit";

    cat = "bat --theme base16";
    bat = "bat --theme base16";
    ga = "git add -A";
    lz = "lazygit";
    g = "git";

    ls = "eza --icons --group-directories-first";
    l = "eza --icons -la --no-user --no-time --no-permissions --git --group-directories-first";
    lr = "eza --icons -laR --git-ignore --git --no-user --no-time --no-permissions --group-directories-first";
    tree = "eza --icons --tree --git-ignore";
    treea = "eza --icons --tree -a";

    cd = "z";

    swd = "cd ~/nix-config ; make ; cd - >> /dev/null";
  };
}
