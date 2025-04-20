return {
	-- Neo-tree (only once)
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- optional but recommended
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("neo-tree").setup({
				-- Do not auto open
				open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
				popup_border_style = "rounded",
				window = {
					position = "float", -- default float for toggle
				},
			})

			-- Keymaps
			vim.keymap.set("n", "<C-b>", "<cmd>Neotree toggle position=float<cr>")
			vim.keymap.set("n", "<leader>t", "<cmd>Neotree float<cr>")
		end,
	},
}
