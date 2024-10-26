return {
  "rcarriga/nvim-dap-ui",
  dependencies = {
    "mfussenegger/nvim-dap",
    "nvim-neotest/nvim-nio",
    {
      "folke/neodev.nvim", -- Adiciona neodev.nvim como dependência
      config = function()
        require("neodev").setup {
          library = { plugins = { "nvim-dap-ui" }, types = true },
        }
      end,
    },
  },
}
