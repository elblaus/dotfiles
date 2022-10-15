-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
    use 'wbthomason/packer.nvim'
    use 'folke/tokyonight.nvim'
    use 'airblade/vim-gitgutter'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'davidgranstrom/scnvim',
        config = function()
            require('scnvim').setup()
        end
    }
end)
