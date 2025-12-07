local c = {
    bg = "#181818",
    fg = "#cdd6f4",
    line = "#1f1f1f",
    comment = "#555555",
    builtin = "#888888",
    func = "#96a6c8",
    string = "#94e2d5",
    number = "#9e95c7",
    property = "#cdd6f4",
    constant = "#999999",
    parameter = "#cdd6f4",
    visual = "#333738",
    error = "#f38ba8",
    warning = "#f9e2af",
    hint = "#888888",
    operator = "#a0a0a0",
    keyword = "#f9e2af",
    type = "#999999",
    search = "#f9e2af",
    plus = "#94e2d5",
    delta = "#f9e2af",
    linenr = "#f9e2af",
    linenr_rel = "#606079",
    float_border = "#333333",
}

-- 2. Define the Highlight Groups
local groups = {
    -- Base Editor
    Normal = { fg = c.fg, bg = "NONE" }, -- Transparent as requested
    NormalFloat = { fg = c.fg, bg = "NONE" }, -- Transparent floats
    FloatBorder = { fg = c.float_border, bg = "NONE" },
    SignColumn = { bg = "NONE" },
    WinSeparator = { fg = c.line },
    LineNr = { fg = c.linenr },
    LineNrAbove = { fg = c.linenr_rel },
    LineNrBelow = { fg = c.linenr_rel },
    CursorLine = { bg = c.line },
    CursorLineNr = { fg = c.keyword, bold = true },
    Visual = { bg = c.visual },
    StatusLine = { bg = "NONE" }, -- As per your vim.cmd request
    StatusLineNC = { bg = "NONE", fg = c.comment },

    -- Syntax Highlighting
    Comment = { fg = c.comment, italic = true },
    Constant = { fg = c.constant },
    String = { fg = c.string },
    Character = { fg = c.string },
    Number = { fg = c.number },
    Boolean = { fg = c.keyword, bold = true }, -- Style: boolean="bold"
    Float = { fg = c.number },
    Identifier = { fg = c.fg },
    Function = { fg = c.func },
    Statement = { fg = c.keyword },
    Conditional = { fg = c.keyword },
    Repeat = { fg = c.keyword },
    Label = { fg = c.keyword },
    Operator = { fg = c.operator },
    Keyword = { fg = c.keyword },
    Exception = { fg = c.keyword },
    PreProc = { fg = c.keyword },
    Type = { fg = c.type },
    Special = { fg = c.builtin },
    Error = { fg = c.error, bold = true }, -- Style: error="bold"
    Todo = { fg = c.warning, bold = true },

    -- Treesitter (Standard captures)
    ["@variable"] = { fg = c.fg },
    ["@variable.builtin"] = { fg = c.builtin },
    ["@constant.builtin"] = { fg = c.builtin },
    ["@function.builtin"] = { fg = c.builtin },
    ["@type.builtin"] = { fg = c.builtin },
    ["@property"] = { fg = c.property },
    ["@parameter"] = { fg = c.parameter },
    ["@keyword.return"] = { fg = c.keyword },

    -- Headings (Markdown/HTML) - Style: headings="bold"
    Title = { fg = c.keyword, bold = true },
    htmlH1 = { fg = c.keyword, bold = true },
    ["@text.title"] = { fg = c.keyword, bold = true },

    -- Diagnostics
    DiagnosticError = { fg = c.error, bold = true },
    DiagnosticWarn = { fg = c.warning, bold = true },
    DiagnosticInfo = { fg = c.func, italic = true },
    DiagnosticHint = { fg = c.hint },

    -- Plugin: Cmp
    CmpItemAbbrMatch = { fg = c.keyword, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.keyword, bold = true },

    -- Plugin: Telescope
    TelescopeMatching = { fg = c.keyword, bold = true },
    TelescopeBorder = { fg = c.float_border },

    -- Plugin: Dashboard
    DashboardFooter = { fg = c.comment, italic = true },

    -- Plugin: NeoTest
    NeotestFocused = { bold = true },
    NeotestAdapterName = { bold = true },
}

-- 3. Apply the highlights
-- Reset current scheme strictly to avoid conflicts
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
end
vim.g.colors_name = "custom"

-- Loop through the table and set the highlights
for group, opts in pairs(groups) do
    vim.api.nvim_set_hl(0, group, opts)
end


--- Great colorscheme out of the box
--- habamax
--- default
--- retrobox
--- wildcharm
--- unokai
