local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
        'git', 'clone', 'https://github.com/wbthomason/packer.nvim',
        install_path
    })
    execute 'packadd packer.nvim'
end

-- I currently use packer.nvim as a package manager, written in full Lua
return require('packer').startup(function()
    -- Packer can manage itself as an optional plugin
    use "wbthomason/packer.nvim"

    -- Post-install/update hook with neovim command
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use {'nvim-treesitter/playground'}

    -- Text based file explorer
    use {'kevinhwang91/rnvimr', opt = true}

    -- My prefered colorscheme
    use {'ghifarit53/tokyonight-vim'}

    -- UI to select things (files, grep results, open buffer$$%s...)
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
    }
    -- My prefered autocompletion plugin
    use {'neovim/nvim-lspconfig'}
    use {'glepnir/lspsaga.nvim'}

		-- nvim-compe replacement
    use {'hrsh7th/nvim-cmp'}
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-buffer'}
		use {'onsails/lspkind-nvim'}
    -- Statusline plugin
    -- Yeah I could write my own but I am feeling lazy
    use {'hoob3rt/lualine.nvim'}

    -- Plugin for autocommenting
    use {'preservim/nerdcommenter'}

    -- Plugin for lua developpement
    use {'tjdevries/nlua.nvim'}

    -- Plugin for css colors
    use {'chrisbra/Colorizer'}

    -- Plugin for better icons
    use {'kyazdani42/nvim-web-devicons'}

    -- Plugin for a better welcome page
    use {'glepnir/dashboard-nvim'}
    -- Plugin for a zen nvim experience
    use {'folke/zen-mode.nvim'}
    use {'folke/twilight.nvim'}

		-- Plugin for luasnip
		use {'L3MON4D3/LuaSnip'}

		-- Which key plugin
		use {'liuchengxu/vim-which-key'}

end)
