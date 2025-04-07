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
  { "tpope/vim-fugitive" },
	{
		"numToStr/Comment.nvim",
		keys = require("mappings.comment"),
		config = function()
			require("Comment").setup()
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
    "nvimtools/none-ls.nvim",
    dependencies = { "nvimtools/none-ls-extras.nvim" },
    config = function()
      local null_ls = require("null-ls")
      local eslint_d = require("none-ls.diagnostics.eslint_d")

      null_ls.setup({
        sources = {
          eslint_d,
          null_ls.builtins.formatting.prettierd,
        },
        on_attach = function(client, bufnr)
          if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
              group = augroup,
              buffer = bufnr,
              callback = function()
                vim.lsp.buf.format({ bufnr = bufnr })
              end,
            })
          end
        end,
      })
    end,
  },
  {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup()
      vim.keymap.set("n", "<leader>gg", function()
        require("toggleterm.terminal").Terminal
          :new({ cmd = "lazygit", hidden = true, direction = "float" })
          :toggle()
      end, { desc = "LazyGit (in term)" })
      vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { desc = "Terminal" })
    end,
  },
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme tokyonight-storm]])
		end,
	},
}
