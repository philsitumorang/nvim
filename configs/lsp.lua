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
	},
})
require("lspconfig").tailwindcss.setup({})
require("lspconfig").tsserver.setup(snippetSupport)
