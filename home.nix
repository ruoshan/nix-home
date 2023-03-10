{ config, pkgs, lib, ... }:

{
  home.username = "r3";
  home.homeDirectory = "/Users/r3";
  home.stateVersion = "22.11";


  imports = [
    ./modules/zsh
    ./modules/nvim
    ./modules/tig.nix
    ./modules/minidlna
    ./modules/git
  ];

  home.packages = with pkgs; [
    kubectl
    tmate
    docker-client
    docker-compose
    hurl
    rlwrap
    pipenv
    httpie
    mitmproxy
    exa
    bat
    bashInteractive
    fzf
    ripgrep
    fd
    htop
    delta
    sdcv
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
