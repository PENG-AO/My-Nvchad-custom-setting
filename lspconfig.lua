local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "clangd", -- c & cpp
  "pyright", -- python
  "rust_analyzer", -- rust
  "html", "cssls", -- html & css
  "ltex", -- latex & markdown
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
