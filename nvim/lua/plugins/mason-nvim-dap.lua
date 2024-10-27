return {
	{
		"jay-babu/mason-nvim-dap.nvim",
		opts = {
			ensure_installed = { "coreclr" },
			handlers = {
				function(config)
					if config.name == "coreclr" then
						local dap = require("dap")

						-- Configura o adaptador coreclr
						dap.adapters.coreclr = {
							type = "executable",
							command = "/home/shpsyte/.local/share/nvim/mason/bin/netcoredbg",
							args = { "--interpreter=vscode" },
						}

						-- Configurações do C# para iniciar o debug
						dap.configurations.cs = {
							{
								type = "coreclr",
								name = "launch - netcoredbg",
								request = "launch",
								program = function()
									return vim.fn.input("Path to dll app", vim.fn.getcwd() .. "/src/", "file")
								end,
								env = {
									ASPNETCORE_ENVIRONMENT = "Development", -- Define o ambiente como Development
								},
							},
						}
					end
				end,
			},
		},
	},
}
