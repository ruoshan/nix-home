{ config, pkgs, ... }:

{
  home.username = "r3";
  home.homeDirectory = "/Users/r3";
  home.stateVersion = "22.11";


  imports = [
    ./modules/nvim
  ];

  home.packages = with pkgs; [
    bashInteractive
    fzf
    ripgrep
    fd
    htop
    delta
    sdcv
    tig
    wrk
    yt-dlp
    python39
    python39Packages.pip
    python39Packages.pipx
    qemu
    lima
    colima
  ];

  programs.home-manager.enable = true;

  programs.go = {
    enable = true;
    goPath = ".golang";
  };

  programs.bash = {
    enable = true;
  };
}
