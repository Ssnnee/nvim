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
  colors = {
    -- Background and base colors
    bg = "#181818",
    fg = "#cdd6f4",
    floatBorder = "#333333",
    line = "#121212",

    -- Syntax colors (moins saturés)
    comment = "#606079",
    -- comment = "#444444",
    builtin = "#888888",
    func = "#96a6c8",
    string = "#94e2d5",
    number = "#9e95c7",
    property = "#f4f4ff",
    constant = "#95a99f",
    parameter = "#f4f4ff",
    -- property = "#888888",  -- Gris moyen
    -- constant = "#999999",  -- Gris clair
    -- parameter = "#888888", -- Gris moyen

    -- builtin = "#95a99f",   -- gruber-darker-quartz
    -- func = "#96a6c8",      -- gruber-darker-niagara
    -- string = "#73c936",    -- gruber-darker-green
    -- number = "#9e95c7",    -- gruber-darker-wisteria
    -- property = "#f4f4ff",  -- gruber-darker-fg+1
    -- constant = "#95a99f",  -- gruber-darker-quartz
    -- parameter = "#f4f4ff", -- gruber-darker-fg+1

    -- UI elements
    visual = "#333738",
    error = "#f38ba8",     -- Gardé de votre terminal pour la visibilité des erreurs
    warning = "#f9e2af",   -- Gardé pour la visibilité des avertissements
    hint = "#888888",      -- Gris pour les suggestions

    -- Language elements
    operator = "#666666",  -- Gris foncé
    keyword = "#f9e2af",   -- Gris moyen
    type = "#999999",      -- Gris clair

    -- operator = "#e4e4ef",  -- gruber-darker-fg
    -- keyword = "#ffdd33",   -- gruber-darker-yellow
    -- type = "#95a99f",      -- gruber-darker-quartz

    -- Search and diff
    -- search = "#b4befe",
    search = "#f9e2af",
    plus = "#94e2d5",      -- Vert désaturé
    delta = "#f9e2af",     -- Jaune désaturé

    -- search = "#ffdd33",    -- gruber-darker-yellow
    -- plus = "#73c936",      -- gruber-darker-green
    -- delta = "#ffdd33",     -- gruber-darker-yellow
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
