vim.keymap.set("i", "(", "()<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "{", "{}<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "[", "[]<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "\"", "\"\"<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "\'", "\'\'<Left>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>lc", ":luafile init.lua<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>fe", ":Ex<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>e", ":lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })

-- omnicomplete binds
vim.keymap.set("i", "<Tab>", function()
	if vim.fn.pumvisible() ~= 0 then
		return vim.api.nvim_replace_termcodes("<Down>", true, false, false)
	else
		return "<Tab>"
	end
end,
{expr = true, silent = true })

vim.keymap.set("i", "<S-Tab>", function()
	if vim.fn.pumvisible() ~= 0 then
		return vim.api.nvim_replace_termcodes("<Up>", true, false, false)
	else
		return "<S-Tab>"
	end
end,
{expr = true, silent = true })

-- open autocompelete menu
vim.keymap.set("i", "<C-j>", "<C-x><C-o>", { noremap = true, silent = true, })
