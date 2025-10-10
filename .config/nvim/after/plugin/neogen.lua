local neogen = require("neogen")

neogen.setup({
	snippet_engine = "luasnip"
})

local opts = {
	noremap = true,
	silent = true
}

vim.keymap.set("n", "<space>nf", neogen.generate, opts)
