return {
	{
		"necrom4/calcium.nvim",
		cmd = { "Calcium" },
		opts = {
			scratchpad = {
				border = "rounded",
			},
		},
		keys = {
			{
				"<leader>ka",
				":Calcium<CR>",
				desc = "Calculate update",
				mode = { "n", "v" },
				silent = false,
			},
			{
				"<leader>kr",
				":Calcium replace<CR>",
				desc = "Calculate replace",
				mode = { "n", "v" },
				silent = false,
			},
			{
				"<leader>ks",
				":Calcium scratchpad<CR>",
				desc = "Calculator",
				mode = { "n", "v" },
				silent = false,
			},
		},
	},
}
