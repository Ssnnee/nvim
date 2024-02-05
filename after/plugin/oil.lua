require("oil").setup{
  -- Oil will take over directory buffers (e.g. `vim .` or `:e src/`)
  -- Set to false if you still want to use netrw.
  default_file_explorer = true,
  -- Id is automatically added at the beginning, and name at the end
  -- See :help oil-columns
  columns = {
      -- "icon",
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

}
