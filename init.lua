vim.g.mapleader = " "

-- options
vim.o.errorbells = false
vim.o.visualbell = false

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = false

vim.o.scrolloff = 5

vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true

vim.o.wildmenu = true

vim.o.wrap = false

vim.o.autoindent = true
vim.o.smartindent = true

vim.o.incsearch = true
vim.o.hlsearch = false

vim.o.splitright = true

vim.o.completeopt = "menuone,noselect"

vim.o.autocompletedelay = 250

vim.o.showtabline = 2

-- netrw
vim.g.netrw_banner = 0
vim.g.netrw_keepdir = 0
vim.g.netrw_liststyle = 0

-- plugins
vim.pack.add({
	{
		src = "https://github.com/HoNamDuong/hybrid.nvim"
	},

	{
		src = "https://github.com/nvim-treesitter/nvim-treesitter",
		version = "main",
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
	root_markers = { ".git" },
})

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))

		if client:supports_method('textDocument/completion') then
			vim.lsp.completion.enable(true, client.id, ev.buf, {autotrigger = true})
		end
	end
})

vim.filetype.add({
	extension = {
		h = "c",

		vert = "glsl",
		frag = "glsl",
		tesc = "glsl",
		tese = "glsl",
		geom = "glsl",
		comp = "glsl",
	},
})

vim.lsp.enable("clangd")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("lua_ls")
vim.lsp.enable("arduino_language_server")
vim.lsp.enable("glsl_analyzer")
vim.lsp.enable("ocaml_lsp")

-- inline errors
vim.diagnostic.config({
	--virtual_text = true,
	virtual_text = false,
})

-- binds
require("keymaps")

vim.cmd("colorscheme hybrid")
