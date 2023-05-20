{ config, pkgs, ... }:

{
  home.file.".config/nvim".source = ./.;

  programs.neovim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [
      nvim-lspconfig
      nvim-treesitter
      completion-nvim
      vim-airline
      vim-airline-themes
      vim-bufferline
      plenary-nvim
      telescope-nvim
      vim-terraform
      vim-nix
      nerdcommenter
      vim-toml
      vim-terraform
      kotlin-vim
    ];
  };
}
