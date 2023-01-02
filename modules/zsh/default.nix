{ config, pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    prezto = {
      enable = true;
      prompt.theme = "powerlevel10k";
    };
    initExtra = builtins.readFile ./zshrc;
  };

  home.file.".p10k.zsh".source = ./p10k.zsh;
  home.file.".myaliases.zsh".source = ./myaliases.zsh;
  home.file.".sudo.zsh".source = ./sudo.zsh;
}
