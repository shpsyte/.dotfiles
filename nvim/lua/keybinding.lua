-- keybindings.lua

-- Definição da função
function InsertClassName()
	-- Mova o cursor para o início da palavra
	vim.cmd("normal 0")
	-- Mova o cursor para o próximo '>'
	vim.cmd("normal f>")

	-- Entre no modo de inserção e insira ' className=\"\"'
	vim.cmd('normal i className="flex "')

	vim.cmd("startinsert")
end

-- Mapeamento da tecla 'F' para a função
vim.api.nvim_set_keymap("n", "F", ":lua InsertClassName()<CR>", { noremap = true, silent = true })

-- Copilot
vim.keymap.set("i", "<C-J>", 'copilot#Accept("\\<CR>")', {
	expr = true,
	replace_keycodes = false,
})

vim.keymap.set("i", "<C-L>", "<Plug>(copilot-accept-word)")
