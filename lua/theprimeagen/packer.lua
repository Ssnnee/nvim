-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
    'folke/tokyonight.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'tokyonight-night'

      -- You can configure highlights by doing something like
      vim.cmd.hi 'Comment gui=none'
    end,
  })

  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }

--   use {
--     'goolord/alpha-nvim',
--     config = function ()
--         require'alpha'.setup(require'alpha.themes.dashboard'.config)
--     end
-- }


-- codeium
-- use {
--   'Exafunction/codeium.vim',
--   config = function ()
--     -- Change '<C-g>' here to any keycode you like.
--     vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true })
--     vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
--     vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
--     vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
--   end
-- }


use {
    'akinsho/flutter-tools.nvim',
    requires = {
        'nvim-lua/plenary.nvim',
    },
}

  use({
    "stevearc/oil.nvim",
    config = function()
      require("oil").setup{
       default_file_explorer = false
      }
    end,
  })

  use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              icons = false,
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  })

  use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
          local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
          ts_update()
      end
  }

  -- use {
  --     "windwp/nvim-autopairs",
  --     config = function() require("nvim-autopairs").setup {} end
  -- }

  use("nvim-treesitter/playground")
  use("theprimeagen/harpoon")
  use("theprimeagen/refactoring.nvim")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use("nvim-treesitter/nvim-treesitter-context");

  use { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
  }

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
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

  use("folke/zen-mode.nvim")
  use("github/copilot.vim")
  use("eandrju/cellular-automaton.nvim")
  use("laytan/cloak.nvim")

end)
