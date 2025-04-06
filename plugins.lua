return {
	{ "neovim/nvim-lspconfig" },
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "onsails/lspkind.nvim" },
	{ "hoob3rt/lualine.nvim" },
	{ "L3MON4D3/LuaSnip" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-path" },
	{
		"numToStr/Comment.nvim",
		keys = require("mappings.comment"),
		config = function()
			require("Comment").setup()
		end,
	},
	{
		"NvChad/nvterm",
		config = function()
			require("nvterm").setup()
		end,
	},
	{ "nvim-treesitter/nvim-treesitter" },
	{
		"nvim-tree/nvim-tree.lua",
		keys = {
			{ "<leader>n", "<cmd>NvimTreeToggle<cr>", desc = "NvimTree" },
		},
	},
	{ "nvim-tree/nvim-web-devicons", lazy = true },
	{ "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme tokyonight-storm]])
		end,
	},
}
