require("vague").setup({
  transparent = true,
  style = {
    -- "none" is the same thing as default. But "italic" and "bold" are also valid options
    boolean = "bold",
    number = "none",
    float = "none",
    error = "bold",
    comments = "italic",
    conditionals = "none",
    functions = "none",
    headings = "bold",
    operators = "none",
    strings = "none",
    variables = "none",

    -- keywords
    keywords = "none",
    keyword_return = "none",
    keywords_loop = "none",
    keywords_label = "none",
    keywords_exception = "none",

    -- builtin
    builtin_constants = "none",
    builtin_functions = "none",
    builtin_types = "none",
    builtin_variables = "none",
  },
  -- plugin styles where applicable
  -- make an issue/pr if you'd like to see more styling options!
  plugins = {
    cmp = {
      match = "bold",
      match_fuzzy = "bold",
    },
    dashboard = {
      footer = "italic",
    },
    lsp = {
      diagnostic_error = "bold",
      diagnostic_hint = "none",
      diagnostic_info = "italic",
      diagnostic_warn = "bold",
    },
    neotest = {
      focused = "bold",
      adapter_name = "bold",
    },
    telescope = {
      match = "bold",
    },
  },
  -- Override colors
  -- Override colors for Ghostly Neovim Theme
  colors = {
    -- Background and base colors
    bg = "#181818",
    fg = "#cdd6f4",
    floatBorder = "#333333",
    line = "#1f1f1f", -- Slightly brighter line color for better visibility against bg

    -- Syntax colors (Ghostly/Muted saturation)
    comment = "#555555",    -- More neutral and darker gray for a 'ghostly' effect
    builtin = "#888888",    -- Gray for built-in functions/types
    func = "#96a6c8",       -- Cool blue for functions (Retained)
    string = "#94e2d5",     -- Cyan/Turquoise for strings (Retained)
    number = "#9e95c7",     -- Soft purple for numbers (Retained)
    property = "#cdd6f4",   -- Soft white for properties (Slightly dimmed from #f4f4ff)
    constant = "#999999",   -- Medium gray for constants (Better readability)
    parameter = "#cdd6f4",  -- Soft white for parameters (Slightly dimmed from #f4f4ff)

    -- UI elements
    visual = "#333738",     -- Retained dark highlight color
    error = "#f38ba8",      -- Red for high visibility errors (Retained)
    warning = "#f9e2af",    -- Yellow for high visibility warnings (Retained)
    hint = "#888888",       -- Gray for suggestions/hints (Retained)

    -- Language elements
    operator = "#a0a0a0",    -- Lighter gray for better visibility
    keyword = "#f9e2af",    -- Yellow/Gold for keywords (Retained)
    type = "#999999",        -- Medium gray for type definitions (Retained)

    -- Search and diff
    search = "#f9e2af",     -- Retained yellow search color
    plus = "#94e2d5",       -- Cyan for added lines (Retained)
    delta = "#f9e2af",      -- Yellow for changed lines (Retained)
  },
})
vim.cmd.colorscheme "vague"
vim.cmd("hi statusline guibg=NONE")
vim.api.nvim_set_hl(0, 'LineNr', {fg = '#f9e2af'})
vim.api.nvim_set_hl(0, 'LineNrAbove', {fg = '#606079'})
vim.api.nvim_set_hl(0, 'LineNrBelow', {fg = '#606079'})

--- Great colorscheme out of the box
--- habamax
--- default
--- retrobox
--- wildcharm
--- unokai
