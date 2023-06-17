vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		"akinsho/toggleterm.nvim", tag = 'v2.*', config = function()
  			require("toggleterm").setup()
	   	 end
    	}
	-- status line
	use {
		'nvim-lualine/lualine.nvim',
		requires = 'kyazdani42/nvim-web-devicons'
      	}
  	use {
        	'nvim-tree/nvim-tree.lua',
        	requires = {
        		'nvim-tree/nvim-web-devicons', -- optional, for file icons
        	},
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
      	}
	-- buffer line
  	use {
		'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'
	}
	-- 代码补全
	use {
		'neoclide/coc.nvim', branch = 'release'
	}
	-- 代码高亮
	use {
        	'nvim-treesitter/nvim-treesitter',
        	run = ':TSUpdate'
    	}
	-- 符号布局
	use 'simrat39/symbols-outline.nvim'
	use {
	  	'nvim-telescope/telescope.nvim', tag = '0.1.1',
  		requires = { {'nvim-lua/plenary.nvim'} }
	}
end)
