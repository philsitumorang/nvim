return {
	{ "github/copilot.vim", lazy = false },

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
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {
			-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
			-- animation = true,
			-- insert_at_start = true,
			-- …etc.
		},
		version = "^1.0.0", -- optional: only update when a new 1.x version is released
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{
				"jose-elias-alvarez/null-ls.nvim",
			},
		},
	},
	{ "nvim-treesitter/nvim-treesitter" },
	{
		"nvim-tree/nvim-tree.lua",
		keys = {
			{ "<leader>n", "<cmd>NvimTreeToggle<cr>", desc = "NvimTree" },
		},
	},
	{ "nvim-tree/nvim-web-devicons", lazy = true },
	{ "nvim-telescope/telescope.nvim", tag = "0.1.2", dependencies = { "nvim-lua/plenary.nvim" } },
	{
		"kdheepak/lazygit.nvim",
		keys = {
			{ "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			-- vim.cmd([[colorscheme tokyonight-storm]])
		end,
	},
	{
		"RRethy/nvim-base16",
		lazy = false,
		config = function()
			local theme = require("themes")
			require("base16-colorscheme").setup(theme.ice)
		end,
	},
}
