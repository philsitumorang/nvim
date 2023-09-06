local map = vim.api.nvim_set_keymap
local opts = { noremap = false, silent = true }

map("n", "<leader>[", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<leader>]", "<Cmd>BufferNext<CR>", opts)
map("n", "<C-x>", "<Cmd>BufferClose<CR>", opts)
