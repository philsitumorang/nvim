package.path = package.path .. ";" .. os.getenv("HOME") .. "/.config/nvim/?.lua"
require("configs.default")
require("mappings.default")

-- Lazy (Package Manager)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Define and Install plugins
require("lazy").setup(require("plugins"))
-- Telescope mapping
require("mappings.telescope")
-- LazyGit settings
require("configs.lazygit")
-- NvimTree settings
require("configs.tree")
-- Treesitter settings
require("configs.treesitter")
-- Mason + LSP
require("configs.lsp")
-- LSP (mappings)
require("mappings.lsp")
-- Null-ls settings
require("configs.null-ls")
-- BarBar
require("mappings.barbar")
-- NvChad Terminal
require("configs.terminal")
-- CMP settings
require("configs.cmp")
