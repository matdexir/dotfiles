-- basic formatting and color settings
vim.cmd('syntax on') -- syntax highlighting
vim.o.fileencoding = "utf-8" -- The encoding written to file
vim.o.splitbelow = true -- Horizontal splits will automatically be below
vim.o.termguicolors = true -- set term gui colors most terminals support this
vim.o.splitright = true -- Vertical splits will automatically be to the right
vim.o.conceallevel = 0 -- So that I can see `` in markdown files

-- identation
-- vim.cmd('set ts=4') -- Insert 2 spaces for a tab
-- vim.cmd('set sw=4') -- Change the number of space characters inserted for indentation
-- vim.cmd('set expandtab') -- Converts tabs to spaces
-- vim.bo.smartindent = true -- Makes indenting smart

-- visual cursorline
vim.wo.cursorline = true -- Enable highlighting of the current line
vim.o.showtabline = 2 -- Always show tabs

-- number
vim.o.number = true
vim.o.relativenumber = true

-- recommended configs
vim.o.backup = false -- This is recommended by coc
vim.o.writebackup = false -- This is recommended by coc
vim.o.updatetime = 300 -- Faster completion
vim.o.timeoutlen = 300
vim.cmd('filetype plugin on') -- filetype detection
vim.o.mouse = "a" -- Enable your mouse
vim.o.hidden = true -- Required to keep multiple buffers open multiple buffers
vim.wo.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
vim.cmd('set shortmess+=c') -- Don't pass messages to |ins-completion-menu|.
vim.cmd('set autochdir') -- Your working directory will always be the same as your working directory
vim.cmd('set clipboard+=unnamedplus') -- Copies to the system register

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.showmatch = true
-- Enable break indent
vim.o.breakindent = true
vim.o.guifont = "MesloLGS NF:13"

-- Default folding option
-- vim.o.foldmethod = "indent"
-- Disable autocommenting
vim.cmd('autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')

