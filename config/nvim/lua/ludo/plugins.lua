--vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'airblade/vim-gitgutter'
    use 'lunarvim/colorschemes'
    use {
	    'akinsho/bufferline.nvim', 
        tag = "v3.*",
	    requires = 'kyazdani42/nvim-web-devicons'
    }
    use {
	    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
    }
    use { 'davidgranstrom/scnvim' }
end)
