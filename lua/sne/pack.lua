vim.pack.add({
  { src = 'https://github.com/vague2k/vague.nvim' },

  -- Specify plugin's name (here the plugin will be called "plugin2"
  -- instead of "generic-name")
  { src = 'https://github.com/user/generic-name', name = 'plugin2' },

  -- Specify version to follow during install and update
  {
    src = 'https://github.com/user/plugin3',
    -- Version constraint, see |vim.version.range()|
    version = vim.version.range('1.0'),
  },
  {
    src = 'https://github.com/user/plugin4',
    -- Git branch, tag, or commit hash
    version = 'main',
  },
})

