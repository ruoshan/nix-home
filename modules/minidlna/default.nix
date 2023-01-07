{ config, pkgs, lib, ... }:
{
  home.packages = let
    myminidlna = pkgs.minidlna.overrideAttrs (old: {
      patches = [./changes.patch];
      meta = old.meta // { platforms = lib.platforms.darwin; };
    });
  in [
    myminidlna
  ];
}
