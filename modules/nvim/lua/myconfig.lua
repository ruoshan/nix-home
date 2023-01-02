require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
}


local lspcfg = require('lspconfig')
local completion = require('completion')
local function on_attach(client, bufnr)
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  completion.on_attach()
end

local servers = { 'gopls' } --, 'pyright' }
for _, svr in ipairs(servers) do
  lspcfg[svr].setup { on_attach = on_attach }
end
