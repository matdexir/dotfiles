vim.cmd([[ set shortmess+=c ]])
vim.o.completeopt = "menuone,noselect"
-- Compe setup
require'compe'.setup {
    enabled = true,
    autocomplete = true,
    debug = false,
    min_length = 1,
    preselect = 'enable',
    throttle_time = 80,
    source_timeout = 200,
    incomplete_delay = 400,
    max_abbr_width = 100,
    max_kind_width = 100,
    max_menu_width = 100,
    documentation = true,

    source = {
        buffer = {menu = "[﬘]\t [BUFFER]"},
        path = true,
        nvim_lsp = true,
        nvim_lua = true,
        spell = true,
        tags = true,
        treesitter = true
    }
}
local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end
-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
-- _G.tab_complete = function()
-- if vim.fn.pumvisible() == 1 then
-- return t "<C-n>"
-- elseif vim.fn['vsnip#available'](1) == 1 then
-- return t "<Plug>(vsnip-expand-or-jump)"
-- elseif check_back_space() then
-- return t "<Tab>"
-- else
-- return vim.fn['compe#complete']()
-- end
-- end
-- _G.s_tab_complete = function()
-- if vim.fn.pumvisible() == 1 then
-- return t "<C-p>"
-- elseif vim.fn['vsnip#jumpable'](-1) == 1 then
-- return t "<Plug>(vsnip-jump-prev)"
-- else
-- If <S-Tab> is not working in your terminal, change it to <C-h>
-- return t "<S-Tab>"
-- end
-- end
_G.tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-n>"
    elseif check_back_space() then
        return t "<Tab>"
    else
        return vim.fn['compe#complete']()
    end
end
_G.s_tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-p>"
    else
        return t "<S-Tab>"
    end
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

-- Map compe confirm and complete functions
vim.api.nvim_set_keymap('i', '<cr>', 'compe#confirm("<cr>")', {expr = true})
vim.api.nvim_set_keymap('i', '<c-space>', 'compe#complete()', {expr = true})
vim.api.nvim_set_keymap('i', '<c-e>', 'compe#close("<c-e>")', {expr = true})
vim.api
    .nvim_set_keymap('i', '<c-f>', 'compe#scroll("delta: +4")', {expr = true})
vim.api
    .nvim_set_keymap('i', '<c-d>', 'compe#scroll("delta: -4")', {expr = true})

-- require('vim.lsp.protocol').CompletionItemKind = {
-- '', -- Text
-- '', -- Method
-- '', -- Function
-- '', -- Constructor
-- '', -- Field
-- '', -- Variable
-- '', -- Class
-- 'ﰮ', -- Interface
-- '', -- Module
-- '', -- Property
-- '', -- Unit
-- '', -- Value
-- '了', -- Enum
-- '', -- Keyword
-- '﬌', -- Snippet
-- '', -- Color
-- '', -- File
-- '', -- Reference
-- '', -- Folder
-- '', -- EnumMember
-- '', -- Constant
-- '', -- Struct
-- '', -- Event
-- 'ﬦ', -- Operator
-- '', -- TypeParameter
-- }
require("vim.lsp.protocol").CompletionItemKind = {
    "   (Text) ", "   (Method)", "   (Function)",
    "   (Constructor)", " ﴲ  (Field)", "[] (Variable)", "   (Class)",
    " ﰮ  (Interface)", "   (Module)", " 襁 (Property)", "   (Unit)",
    "   (Value)", " 練 (Enum)", "   (Keyword)", "   (Snippet)",
    "   (Color)", "   (File)", "   (Reference)", "   (Folder)",
    "   (EnumMember)", " ﲀ  (Constant)", " ﳤ  (Struct)", "   (Event)",
    "   (Operator)", "   (TypeParameter)"
}

