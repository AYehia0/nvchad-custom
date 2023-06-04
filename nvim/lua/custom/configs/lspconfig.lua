local on_attach = require("plugins.configs.lspconfig").on_attach
local cap = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

-- Python LSP configs
lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = cap,
  filetypes = {"python"},
})

-- Typescript LSP configs
lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = cap,
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
})

lspconfig.jdtls.setup({
  on_attach = on_attach,
  capabilities = cap,
  filetypes = {"java"},
  cmd = { "jdtls" },
})

lspconfig.gopls.setup({
  cmd = { "gopls", "serve" },
  -- settings = {
  --   gopls = {
  --       analyses = {
  --           unusedparams = true,
  --       },
  --       staticcheck = true,
  --       },
  --   },
  on_attach = on_attach,
  capabilities = cap,
})
