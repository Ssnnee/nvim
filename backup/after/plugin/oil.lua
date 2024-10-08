require("oil").setup{
  -- Oil will take over directory buffers (e.g. `vim .` or `:e src/`)
  -- Set to false if you still want to use netrw.
  default_file_explorer = true,
  -- Id is automatically added at the beginning, and name at the end
  -- See :help oil-columns
  columns = {
      "icon",
      "permissions",
      "size",
      "mtime",
  },

  view_options = {
    -- Show files and directories that start with "."
    show_hidden = true,
  },

   -- Skip the confirmation popup for simple operations
  skip_confirm_for_simple_edits = true,
  --
   -- Set to false to disable all of the above keymaps
  use_default_keymaps = false,
   keymaps = {
    ["g?"] = "actions.show_help",
    ["<CR>"] = "actions.select",
    ["<C-c>"] = "actions.close",
    ["<C-l>"] = "actions.refresh",
    ["-"] = "actions.parent",
  },

}
