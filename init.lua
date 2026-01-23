vim.g.mapleader = " "

-- options
vim.opt.errorbells = false
vim.opt.visualbell = false

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = false

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.wildmenu = true

vim.opt.wrap = false

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.incsearch = true
vim.opt.hlsearch = true

vim.opt.splitright = true

-- plugins
vim.pack.add({
	{src = "https://github.com/HoNamDuong/hybrid.nvim"},

	{ 
		src = "https://github.com/nvim-treesitter/nvim-treesitter", 
		name = "treesitter",
		version = "master",
	},

	{
		src = "https://github.com/nvim-lua/plenary.nvim",
		name = "plenary"
	},

	{
		src = "https://github.com/nvim-telescope/telescope.nvim",
		name = "telescope"
	}
})

-- plugin config
require("plugins.treesitter")

-- binds
vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>rc", ":luafile init.lua<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>ff", ":Telescope find_files hidden=true<CR>", { noremap = true, silent = true })

vim.cmd("colorscheme hybrid")
