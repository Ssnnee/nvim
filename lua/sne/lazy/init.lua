return {

    {
        "nvim-lua/plenary.nvim",
        name = "plenary"
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

