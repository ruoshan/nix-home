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
    '';
    initExtra = builtins.readFile ./zshrc;
    profileExtra = ''
      # Nix
      if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
        . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
        export MANPATH="$HOME/.nix-profile/share/man:/nix/var/nix/profiles/default/share/man:$MANPATH"
      fi
    '';
  };

  home.file.".p10k.zsh".source = ./p10k.zsh;
  home.file.".myaliases.zsh".source = ./myaliases.zsh;
  home.file.".sudo.zsh".source = ./sudo.zsh;
}
