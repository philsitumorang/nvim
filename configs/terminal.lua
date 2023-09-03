require("nvterm").setup({
	terminals = {
		shell = vim.o.shell,
		list = {},
		type_opts = {
			float = {
				relative = "editor",
				row = 0.3,
				col = 0.25,
				width = 0.5,
				height = 0.4,
				border = "single",
			},
			horizontal = { location = "rightbelow", split_ratio = 0.3 },
			vertical = { location = "rightbelow", split_ratio = 0.5 },
		},
	},
	behavior = {
		autoclose_on_quit = {
			enabled = false,
			confirm = true,
		},
		close_on_exit = true,
		auto_insert = true,
	},
})

local terminal = require("nvterm.terminal")

local ft_cmds = {
	python = "python3 " .. vim.fn.expand("%"),
}
local toggle_modes = { "n", "t" }
local mappings = {
	{
		toggle_modes,
		"<leader>h",
		function()
			require("nvterm.terminal").toggle("horizontal")
		end,
	},
	{
		toggle_modes,
		"<leader>v",
		function()
			require("nvterm.terminal").toggle("vertical")
		end,
	},
}
local opts = { noremap = true, silent = true }
for _, mapping in ipairs(mappings) do
	vim.keymap.set(mapping[1], mapping[2], mapping[3], opts)
end