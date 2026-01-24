vim.g.mapleader = " "

-- options
vim.o.errorbells = false
vim.o.visualbell = false

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = false

vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true

vim.o.wildmenu = true

vim.o.wrap = false

vim.o.autoindent = true
vim.o.smartindent = true

vim.o.incsearch = true
vim.o.hlsearch = true

vim.o.splitright = true

vim.o.completeopt = "menuone,noselect,popup"

vim.o.autocompletedelay = 250

-- plugins
vim.pack.add({
	{ src = "https://github.com/HoNamDuong/hybrid.nvim" },

	{
		src = "https://github.com/nvim-treesitter/nvim-treesitter",
		version = "master",
	},

	{
		src = "https://github.com/nvim-lua/plenary.nvim",
	},

	{
		src = "https://github.com/nvim-telescope/telescope.nvim",
	},

	{
		src = "https://github.com/neovim/nvim-lspconfig",
	},

	{
		src = "https://github.com/mason-org/mason.nvim",
	},
})

-- plugin config
require("plugins.treesitter")
require("plugins.mason")

-- lsp 
vim.lsp.config("*", {
	capabilities = {
		textDocument = {
			semanticTokens = {
				multilineTokenSupport = true,
			}
		}
	},
	on_attach = function(client, bufnr)
		vim.lsp.completion.enable(true, client.id, bufnr, {
			autotrigger = true,
			convert = function(item)
				return { abbr = item.label:gsub("%b()", "")}
			end
		})
	end,
	root_markers = { ".git" },
})

vim.lsp.enable("clangd")
vim.lsp.enable("lua_ls")

-- binds
require("keymaps")

vim.cmd("colorscheme hybrid")
