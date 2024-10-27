local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

-- Função para capturar o nome da pasta atual como namespace
local function get_namespace()
	local dir = vim.fn.expand("%:p:h") -- Caminho da pasta atual
	local namespace = dir:match("([^/\\]+)$") -- Pega o nome da pasta
	return namespace or "DefaultNamespace"
end

ls.add_snippets("cs", {
	s("Myclass", {
		t("namespace "),
		f(get_namespace, {}),
		t({ "", "" }),
		t("public class "),
		i(1, "NomeDaClasse"),
		t({ "", "{" }),
		t({ "    public " }),
		i(2, "NomeDaClasse"),
		t("() { }"),
		t({ "", "}" }),
	}),
})
