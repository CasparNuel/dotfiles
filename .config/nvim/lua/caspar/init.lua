vim.opt.relativenumber = true
vim.opt.hlsearch = false
vim.opt.number = true
vim.opt.scrolloff = 999
vim.opt.signcolumn = "yes"

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.lsp.foldexpr()"
vim.opt.foldlevel = 99
vim.opt.foldtext = ""
vim.opt.foldlevelstart = 0
vim.opt.foldnestmax = 1

require("caspar.remap")
require("caspar.filetype")
require("caspar.lazy")
require("caspar.commands")
