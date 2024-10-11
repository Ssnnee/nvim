return {

  {
    "nvim-lua/plenary.nvim",
    name = "plenary"
  },

  {
    "github/copilot.vim",
  },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },


  "eandrju/cellular-automaton.nvim",
  {
    "lukas-reineke/indent-blankline.nvim",
    lazy = false,
    config = function()
      require("ibl").setup {
        indent = {char = "┊"},
        whitespace = {
          -- highlight = highlight,
          remove_blankline_trail = true
        },
        scope = {enabled = false}
      }
    end
  },
}

