Capabilities = vim.lsp.protocol.make_client_capabilities()
Capabilities.textDocument.completion.completionItem.snippetSupport = true
Capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}
