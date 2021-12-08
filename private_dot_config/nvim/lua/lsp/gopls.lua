require'lspconfig'.gopls.setup {
    capabilities = Capabilities,
    cmd = {"gopls", "serve"},
    settings = {gopls = {analyses = {unusedparams = true}, staticcheck = true}}
}
