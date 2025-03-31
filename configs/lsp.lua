local mason = require("mason")
local lspconfig = require("mason-lspconfig")

local snippetSupport = {
	capabilities = {
		textDocument = {
			completion = {
				completionItem = {
					snippetSupport = true,
				},
			},
		},
	},
}

mason.setup({})
lspconfig.setup({
	ensure_installed = {
		"tailwindcss",
		"ts_ls"
	},
})
require("lspconfig").tailwindcss.setup({})
require("lspconfig").ts_ls.setup(snippetSupport)
