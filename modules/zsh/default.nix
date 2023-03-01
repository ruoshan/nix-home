{ config, pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    prezto = {
      enable = true;
      prompt.theme = "powerlevel10k";
    };
    envExtra = ''
      export PATH="$PATH:$HOME/.local/bin"
      export CDPATH="$HOME/Workplace/git"
    '';
    initExtra = builtins.readFile ./zshrc;
    profileExtra = ''
      if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
        source '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
      fi
    '';
  };

  home.file.".p10k.zsh".source = ./p10k.zsh;
  home.file.".myaliases.zsh".source = ./myaliases.zsh;
  home.file.".sudo.zsh".source = ./sudo.zsh;
}
