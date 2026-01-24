require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"c",
		"lua",
		"go",
		"zig",
		"markdown",
		"cpp",
		"ocaml"
	},
	
	auto_install = true,

	highlight = { enable = true }
})
