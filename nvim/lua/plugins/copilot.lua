---@type LazySpec
return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup {
      panel = {
        enabled = true,
        auto_refresh = false,
        keymap = {
          jump_prev = "[[",
          jump_next = "]]",
          accept = "<CR>",
          refresh = "gr",
          open = "<M-CR>",
        },
        layout = {
          position = "bottom", -- | top | left | right
          ratio = 0.4,
        },
      },
      suggestion = {
        enabled = true,
        auto_trigger = true,
        hide_during_completion = true,
        debounce = 0,
        keymap = {
          accept = "<C-l>", -- Usando Ctrl+l em vez de Meta+l jose wtf
          accept_word = "<C-]>",
          accept_line = "<C-[>",
          -- next = "<C-]>", -- Usando Ctrl+n em vez de Meta+]
          -- prev = "<C-[>", -- Usando Ctrl+p em vez de Meta+[
          dismiss = "<M-]>",
          keymap = {},
        },
      },
      filetypes = {
        yaml = false,
        markdown = false,
        help = false,
        gitcommit = false,
        gitrebase = false,
        hgcommit = false,
        svn = false,
        cvs = false,
        ["."] = false,
      },
      copilot_node_command = "node", -- Node.js version must be > 18.x
      server_opts_overrides = {},
    }
  end,
}