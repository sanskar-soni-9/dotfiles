-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Normal Mode --
keymap("n", "+", "<C-a>")
keymap("n", "-", "<C-x>")

keymap("n", "<C-a>", "gg<S-v>G")

keymap("n", "te", ":tabedit<Return>", opts)
keymap("n", "<tab>", ":tabnext<Return>", opts)
keymap("n", "<S-tab>", ":tabprev<Return>", opts)

-- Jumplist
keymap("n", "<C-m>", "<C-i>", opts)

-- Diagnostics
keymap("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- Copilot
keymap("n", "<leader>D", "<cmd>Copilot disable<CR>", opts)

-- Interactive Mode --
keymap("i", "<C-b>", "<ESC>^i", opts)
keymap("i", "<C-e>", "<End>", opts)

keymap("i", "<C-k>", "<Up>", opts) -- conflict with signature help
keymap("i", "<C-l>", "<Right>", opts)
keymap("i", "<C-j>", "<Down>", opts)
keymap("i", "<C-h>", "<Left>", opts)
