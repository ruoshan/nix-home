{ config, pkgs, ... }:
{
  home.packages = [ pkgs.tig ];
  home.file.".tigrc".text = ''
    bind main G move-last-line
    bind main H move-first-line
    bind main F none
    bind generic <Ctrl-f> move-page-down
    bind generic <Ctrl-b> move-page-up
    
    set commit-order = topo
    set main-view = date:relative-compact id date:local=true author:email-user commit-title:graph=v2,refs=true
  '';
}
