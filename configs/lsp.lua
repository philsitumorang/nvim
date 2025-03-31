local mason = require("mason")
local lspconfig = require("mason-lspconfig")

mason.setup({})
lspconfig.setup({
  automatic_installation = true,
  handlers = {
    function(server_name)
      require("lspconfig")[server_name].setup({})
    end,
  },
})
