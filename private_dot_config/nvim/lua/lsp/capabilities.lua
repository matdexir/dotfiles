-- Capabilities = vim.lsp.protocol.make_client_capabilities()
-- Capabilities.textDocument.completion.completionItem.snippetSupport = true
-- Capabilities.textDocument.completion.completionItem.resolveSupport = {
  -- properties = {
    -- 'documentation',
    -- 'detail',
    -- 'additionalTextEdits',
  -- }
-- }
Capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
