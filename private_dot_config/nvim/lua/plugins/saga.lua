local saga = require 'lspsaga'

saga.setup {
    use_saga_diagnostic_sign = true,
    error_sign = '', -- 
    warn_sign = '',
    hint_sign = '',
    infor_sign = '',
    diagnostic_header_icon = '   ',
    code_action_icon = ' ',
    code_action_prompt = {
        enable = true,
        sign = true,
        sign_priority = 20,
        virtual_text = true
    },
    finder_definition_icon = '  ',
    finder_reference_icon = '  ',
    max_preview_lines = 10, -- preview lines of lsp_finder and definition preview
    finder_action_keys = {
        open = 'o',
        vsplit = 's',
        split = 'i',
        quit = 'q',
        scroll_down = '<C-f>',
        scroll_up = '<C-b>' -- quit can be a table
    },
    code_action_keys = {quit = 'q', exec = '<CR>'},
    rename_action_keys = {
        quit = '<C-c>',
        exec = '<CR>' -- quit can be a table
    },
    definition_preview_icon = '  ',
    border_style = "single"
}
-- vim.api.nvim_buf_set_keymap(0, 'n', 'K', ':LspSaga hover_doc<CR>', { noremap = true, silent = true})
vim.cmd([[ nnoremap <silent> K :Lspsaga lsp_finder<CR> ]])
-- vim.api.nvim_buf_set_keymap(0, 'n', 'gh', ':LspSaga lsp_finder<CR>', { noremap = true, silent = true})
vim.cmd([[ nnoremap <silent> gh :Lspsaga lsp_finder<CR> ]])
-- vim.api.nvim_buf_set_keymap(0, 'n', 'gs', '<Cmd>LspSaga signature_help<CR>', { noremap = true, silent = true})
vim.cmd([[ nnoremap <silent> gs :Lspsaga signature_help<CR> ]])

-- Bulk rename
vim.cmd([[ nnoremap <silent>gr :Lspsaga rename<CR> ]])

-- Jump to diagnostics
vim.cmd([[ nnoremap <silent> [e :Lspsaga diagnostic_jump_next<CR> ]])
vim.cmd([[ nnoremap <silent> ]e :Lspsaga diagnostic_jump_prev<CR> ]])
