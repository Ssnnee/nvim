return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme "catppuccin"
            require("catppuccin").setup(
                {
                    flavour = "mocha", -- latte, frappe, macchiato, mocha
                    background = {
                        -- :h background
                        light = "latte",
                        dark = "mocha"
                    },
                    transparent_background = true, -- disables setting the background color.
                    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
                    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
                    dim_inactive = {
                        enabled = false, -- dims the background color of inactive window
                        shade = "black",
                        percentage = 0.15 -- percentage of the shade to apply to the inactive window
                    },
                    no_italic = false, -- Force no italic
                    no_bold = false, -- Force no bold
                    no_underline = false, -- Force no underline
                    styles = {
                        -- Handles the styles of general hi groups (see `:h highlight-args`):
                        comments = {"italic"}, -- Change the style of comments
                        conditionals = {"italic"},
                        loops = {},
                        functions = {},
                        keywords = {},
                        strings = {},
                        variables = {},
                        numbers = {},
                        booleans = {},
                        properties = {},
                        types = {},
                        operators = {}
                        -- miscs = {}, -- Uncomment to turn off hard-coded styles
                    },
                    color_overrides = {
                        mocha = {
                            base = "#000000",
                            -- mantle = "#000000",
                            crust = "#000000"
                        }
                    },
                    custom_highlights = function(colors)
                        return {
                            Comment = {fg = colors.flamingo},
                            TabLineSel = {bg = colors.none},
                            CmpBorder = {fg = colors.surface2},
                            Pmenu = {bg = colors.none}
                        }
                    end,
                    default_integrations = true,
                    integrations = {
                        cmp = true,
                        gitsigns = true,
                        nvimtree = true,
                        treesitter = true,
                        notify = false,
                        mini = {
                            enabled = true,
                            indentscope_color = ""
                        }
                        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
                    }
                }
            )
        end
    }
}