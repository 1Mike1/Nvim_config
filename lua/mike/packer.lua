vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ('theprimeagen/harpoon')
  use ('mbbill/undotree')
  use ('tpope/vim-fugitive')
--  use("tpope/vim-surround")

  -- snippets
--  use({
--      "L3MON4D3/LuaSnip",
--      requires = {
--          "rafamadriz/friendly-snippets",
--      },
--  })

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  -- use ('hoob3rt/lualine.nvim')
  use ('kyazdani42/nvim-web-devicons')
  -- use ('windwp/nvim-spectre')

  -- hightlight matching tag in html,jsx etc.
  -- use("leafOfTree/vim-matchtag")

  -- move between kitty windows
  -- use("knubie/vim-kitty-navigator")
 
  -- commenting
  --  use("JoosepAlviste/nvim-ts-context-commentstring")
  --  use({ "numToStr/Comment.nvim", tag = "v0.6" })

  -- Formatting
  -- use("mhartington/formatter.nvim")

  -- nvim-tree
  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- icons in complete
  -- use ("onsails/lspkind-nvim")
 -- use({
 --     "folke/trouble.nvim",
 --     requires = "kyazdani42/nvim-web-devicons",
 --     config = function()
 --       require("trouble").setup({})
 --     end,
 --   })

  -- bufferlin
   use({ "akinsho/bufferline.nvim", tag = "*", requires = "kyazdani42/nvim-web-devicons" })

   -- code action
 --   use({
 --     "weilbith/nvim-code-action-menu",
 --     cmd = "CodeActionMenu",
 --   })

 --   use({
 --     "phaazon/hop.nvim",
 --     as = "hop",
 --     config = function()
 --       require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
 --     end,
 --   })

    -- session
 --   use({
 --     "rmagatti/auto-session",
 --     config = function()
 --       require("auto-session").setup({
 --         log_level = "error",
 --         auto_session_suppress_dirs = { "~/", "~/Projects" },
 --       })
 --     end,
 --   })

 --   -- session-lens
 --   use({
 --     "rmagatti/session-lens",
 --     config = function()
 --       require("session-lens").setup({--[[your custom config--]]
 --       })
 --     end,
 --   })

    -- Dashboard
 --   use("goolord/alpha-nvim")

    -- Colorizer
    use("norcalli/nvim-colorizer.lua")

    -- tokyonight theme
    use("folke/tokyonight.nvim")

end)
