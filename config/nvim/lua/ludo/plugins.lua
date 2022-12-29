--vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'airblade/vim-gitgutter'
    use 'lunarvim/colorschemes'
    use {
	    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
    }
    use { 'davidgranstrom/scnvim' }
    use('nvim-treesitter/nvim-treesitter', { run = 'TSUpdate'})
--    use {
--        'VonHeikemen/lsp-zero.nvim',
--        requires = {
--            -- LSP Support
--            {'neovim/nvim-lspconfig'},
--            {'williamboman/mason.nvim'},
--            {'williamboman/mason-lspconfig.nvim'},
--
--            -- Autocompletion
--            {'hrsh7th/nvim-cmp'},
--            {'hrsh7th/cmp-buffer'},
--            {'hrsh7th/cmp-path'},
--            {'saadparwaiz1/cmp_luasnip'},
--            {'hrsh7th/cmp-nvim-lsp'},
--            {'hrsh7th/cmp-nvim-lua'},
--
--            -- Snippets
--            {'L3MON4D3/LuaSnip'},
--            {'rafamadriz/friendly-snippets'},
--        }
--    }
--    use {
--        'hrsh7th/nvim-cmp',
--        requires = {
--            'hrsh7th/cmp-buffer',
--            'hrsh7th/cmp-nvim-lsp',
--            'hrsh7th/cmp-path',
--            'quangnguyen30192/cmp-nvim-tags',
--            'saadparwaiz1/cmp_luasnip',
--            'onsails/lspkind-nvim',
--            'kyazdani42/nvim-web-devicons'
--        },
--        --config = r'nvim-cmp'
--  }
end)


