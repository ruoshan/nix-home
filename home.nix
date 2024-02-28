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
    # tools
    ldns
    qemu
    lima-bin
    wget
    nginx
    tmate
    hurl
    rlwrap
    httpie
    mitmproxy
    exa
    bat
    bashInteractive
    ripgrep
    fd
    htop
    delta
    sdcv
    wrk
    yt-dlp

    # container
    docker-client
    docker-compose
    kubectl
    colima

    # lang
    (python310.withPackages(ps: [
      ps.pipx
    ]))
    gore
    pipenv
    rustc
    rustfmt
    cargo

    # java
    jadx
  ];

  programs.home-manager.enable = true;

  programs.go = {
    enable = true;
    goPath = ".golang";
  };

  programs.bash = {
    enable = true;
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
}
