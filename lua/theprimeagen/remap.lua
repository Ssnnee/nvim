vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>w", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww ~/.config/scripts/fzf_and_vim <CR>")

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)

-- -- Make some mappings for Optimot keyboad

-- Remapper les touches de direction
vim.keymap.set('', 'p', 'h', { noremap = true, silent = true })
vim.keymap.set('', 't', 'j', { noremap = true, silent = true })
vim.keymap.set('', 's', 'k', { noremap = true, silent = true })
vim.keymap.set('', 'r', 'l', { noremap = true, silent = true })

-- vim.keymap.set('v', 'p', 'h', { noremap = true, silent = true })
-- vim.keymap.set('v', 't', 'j', { noremap = true, silent = true })
-- vim.keymap.set('v', 's', 'k', { noremap = true, silent = true })
-- vim.keymap.set('v', 'r', 'l', { noremap = true, silent = true })

-- vim la touche de renommer de 'r' à 'é'
vim.keymap.set('', 'é', 'r', { noremap = true, silent = true })
vim.keymap.set('', 'h', 'p', { noremap = true, silent = true })
-- Remapper l'action coller de 'p' à 'q'
-- vim.keymap.set('n', 'q', 'p', { noremap = true, silent = true })

-- Remapper l'action d'enregistrement de macro de 'q' à 'a'
-- vim.keymap.set('n', 'a', 'q', { noremap = true, silent = true })

