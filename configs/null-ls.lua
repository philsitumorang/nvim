local null_ls = require("null-ls")

local b = null_ls.builtins

local function has_eslint_configured(utils)
	return utils.root_has_file(".eslintrc.js")
end

local function has_prettier_configured(utils)
	return utils.root_has_file(".prettierrc")
end

local sources = {
	b.code_actions.eslint_d.with({ condtion = has_eslint_configured }),
	b.diagnostics.eslint_d.with({ condtion = has_eslint_configured }),
	b.formatting.prettier.with({ condtion = has_prettier_configured }),
	b.formatting.stylua,
	b.formatting.shfmt,
	b.diagnostics.shellcheck.with({ diagnostics_format = "#{m} [#{c}]" }),
}

null_ls.setup({
	debug = false,
	sources = sources,
	on_attach = function(client)
		if client.supports_method("textDocument/formatting") then
			vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format({ async = false })")
		end
	end,
})