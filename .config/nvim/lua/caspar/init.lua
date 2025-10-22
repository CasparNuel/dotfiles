vim.opt.relativenumber = true
vim.opt.hlsearch = false
vim.opt.number = true
vim.opt.scrolloff = 999
vim.opt.signcolumn = "yes"

require("caspar.remap")
require("caspar.filetype")
require("caspar.lazy")
require("caspar.commands")
