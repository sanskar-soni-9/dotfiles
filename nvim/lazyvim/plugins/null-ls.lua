return {
  {
    "nvimtools/none-ls.nvim",
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          nls.builtins.diagnostics.phpstan.with({
            extra_args = {
              "--memory-limit=2G",
            },
          }),
        },
      }
    end,
  },
  {
    -- add longer timeout
    -- "neovim/nvim-lspconfig",
    -- opts = {
    --   format = { timeout_ms = 2000 },
    -- },
  },
}
