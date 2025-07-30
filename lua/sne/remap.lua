vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>w", vim.cmd.Ex)
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set('n', '<C-p>', "<cmd>Pick files<cr>")
vim.keymap.set('n', '<leader>ps', '<cmd>Pick grep<CR>')
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Put the cursor at the same position while pasting in normal mode
vim.keymap.set("n", "p", function()
  local cursor = vim.api.nvim_win_get_cursor(0)
  local row, col = cursor[1], cursor[2]
  vim.cmd("norm! p")
  vim.api.nvim_win_set_cursor(0, { row + 1, col })
end)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("", "<leader>.", "<C-w>")

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww ~/.config/scripts/fzf_and_vim <CR>")

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>w", "<C-w>")

vim.keymap.set("", "<leader>tb", "<cmd>Pick buffers<CR>")
vim.keymap.set("", "<leader>bn", "<cmd>bnext<CR>")
vim.keymap.set("", "<leader>bp", "<cmd>bprevious<CR>")

vim.keymap.set("v", "<leader>ec", "<cmd>.!toilet -w 200 -f term -F border<CR>")
vim.keymap.set("v", "<leader>fi", "<cmd>.!figlet<CR>")

-- Make some mappings for Optimot keyboad
vim.keymap.set("n", "XX", "<cmd><CR>")

vim.keymap.set("n", "<leader>cd", "<cmd>Copilot disable<CR>")

vim.keymap.set('n', 'gK', function()
  local new_config = not vim.diagnostic.config().virtual_lines
  vim.diagnostic.config({ virtual_lines = new_config })
end, { desc = 'Toggle diagnostic virtual_lines' })

-- Copy Full File-Path
vim.keymap.set("n", "<leader>pa", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  print("file:", path)
end)
