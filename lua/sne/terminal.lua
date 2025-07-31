vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

local term_state = {
  buf = nil,
  prev_buf = nil,
}

local state = {
  floating = {
    buf = -1,
    win = -1,
  }
}

local function toggle_terminal()
  local curr_buf = vim.api.nvim_get_current_buf()

  -- If currently in the terminal, switch back to previous buffer
  if term_state.buf and vim.api.nvim_buf_is_valid(term_state.buf)
    and curr_buf == term_state.buf
    and term_state.prev_buf
    and vim.api.nvim_buf_is_valid(term_state.prev_buf)
    then
      vim.api.nvim_set_current_buf(term_state.prev_buf)
      return
    end

    -- Save the current buffer as the one to return to
    term_state.prev_buf = curr_buf

    -- If terminal buffer exists, just switch to it
    if term_state.buf and vim.api.nvim_buf_is_valid(term_state.buf) then
      vim.api.nvim_set_current_buf(term_state.buf)
    else
      -- Create a new terminal buffer
      vim.cmd("enew") -- new empty buffer
      vim.cmd("terminal")
      term_state.buf = vim.api.nvim_get_current_buf()
    end
  end

  local function create_floating_window(opts)
    opts = opts or {}
    local width = opts.width or math.floor(vim.o.columns * 0.8)
    local height = opts.height or math.floor(vim.o.lines * 0.8)

    -- Calculate the position to center the window
    local col = math.floor((vim.o.columns - width) / 2)
    local row = math.floor((vim.o.lines - height) / 2)

    -- Create a buffer
    local buf = nil
    if vim.api.nvim_buf_is_valid(opts.buf) then
      buf = opts.buf
    else
      buf = vim.api.nvim_create_buf(false, true) -- No file, scratch buffer
    end

    -- Define window configuration
    local win_config = {
      relative = "editor",
      width = width,
      height = height,
      col = col,
      row = row,
      style = "minimal", -- No borders or extra UI elements
      border = "rounded",
    }

    -- Create the floating window
    local win = vim.api.nvim_open_win(buf, true, win_config)

    return { buf = buf, win = win }
  end

  local toggle_floating_terminal = function()
    if not vim.api.nvim_win_is_valid(state.floating.win) then
      state.floating = create_floating_window { buf = state.floating.buf }
      if vim.bo[state.floating.buf].buftype ~= "terminal" then
        vim.cmd.terminal()
      end
    else
      vim.api.nvim_win_hide(state.floating.win)
    end
  end

  vim.api.nvim_create_user_command("Floaterminal", toggle_floating_terminal, {})
  vim.api.nvim_create_user_command("Toggleterminal", toggle_terminal, {})

  vim.keymap.set("n", "<leader>tt", toggle_terminal, { desc = "Toggle Terminal" })
  vim.keymap.set("n", "<leader>tp", toggle_floating_terminal, { desc = "Toggle Floating Terminal" })
  vim.keymap.set("n", "<leader>te", "<CMD>term<CR>", { desc = "Open Terminal in New Buffer" })

  vim.keymap.set("n", "<leader>ts", function ()
    vim.cmd.vnew()
    vim.cmd.terminal()
    vim.cmd.wincmd("J")
    vim.api.nvim_win_set_height(0, 8)
  end)
  --
  vim.keymap.set("n", "<C-f>", function ()
    vim.cmd("silent !st -e ~/.config/scripts/fzf_and_vim ")
  end)
