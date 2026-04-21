vim.keymap.set("i", "(", "()<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "{", "{}<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "[", "[]<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "\"", "\"\"<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "\'", "\'\'<Left>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, { noremap = true, silent = true })

vim.keymap.set("n", "<leader>fe", "<cmd>Ex<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>ss", "<cmd>vsplit<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>nt", "<cmd>tabnew<CR>", { noremap = true, silent = true })

for i = 1, 9 do
	vim.keymap.set("n", "<leader>" .. i, i .. "gt", { noremap = true, silent = true })
end

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
