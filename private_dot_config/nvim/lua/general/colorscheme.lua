-- vim.g.tokyonight_current_word = 'grey background'
vim.g.tokyonight_style = 'storm' -- available: night, storm
vim.g.tokyonight_enable_italic = 1

vim.cmd('colorscheme tokyonight')
-- workaound for lightline with tabs
-- vim.g.lightline = {
-- colorscheme = 'tokyonight';
-- active = {
-- left = { {'mode', 'paste'}, {'readonly', 'filename', 'modified'} }
-- };
-- tabline = {
-- left = { {'buffers'} };
-- right = { {'close'} }
-- };
-- component_expand = {
-- buffers = 'lightline#bufferline#buffers'
-- };
-- component_type = {
-- buffers = 'tabsel'
-- },
-- }
-- vim.cmd('let g:lightline#bufferline#enable_devicons = 1')
