{ config, pkgs, ... }:
{
  home.file.".gitconfig".source = ./gitconfig;
}
