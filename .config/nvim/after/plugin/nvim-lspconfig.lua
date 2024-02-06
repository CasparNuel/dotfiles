local lspconf = require("lspconfig")

lspconf.clangd.setup({})
lspconf.rust_analyzer.setup({})
lspconf.pylsp.setup({})
lspconf.lua_ls.setup({})
lspconf.typst_lsp.setup({
	filetypes = {"typst", "typ"},
	settings = {
		exportPdf = "never"
	}
})
lspconf.tsserver.setup({})
