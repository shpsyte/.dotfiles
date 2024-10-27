return {
	-- outros plugins...
	{
		"L3MON4D3/LuaSnip",
		config = function()
			require("luasnip.loaders.from_vscode").lazy_load() -- Carrega snippets padrão
		end,
	},
}
