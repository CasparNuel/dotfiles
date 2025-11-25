vim.opt.relativenumber = true
vim.opt.hlsearch = false
vim.opt.number = true
vim.opt.scrolloff = 999
vim.opt.signcolumn = "yes"

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldtext = ""
vim.opt.foldlevel = 0
vim.opt.foldlevelstart = 0
vim.opt.foldnestmax = 1

vim.api.nvim_set_keymap('i', 'jk', '<ESC>zv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<ESC>', '<ESC>zv', { noremap = true, silent = true })

-- fix for erratic behaviour editing inside fold
vim.cmd([[
	augroup folds
	autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
	autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif
	augroup END
]])

require("caspar.remap")
require("caspar.filetype")
require("caspar.lazy")
require("caspar.commands")
