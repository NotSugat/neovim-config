return {
	{
		'akinsho/toggleterm.nvim',
		version = "*",
		config = function()
			local toggleterm = require('toggleterm')

			toggleterm.setup(
				{
					size = function(term)
						if term.direction == "horizontal" then
							return 15
						elseif term.direction == "vertical" then
							return vim.o.columns * 0.2
						end
					end,
					open_mapping = [[<c-j>]],
					hide_numbers = true,
					shade_filetypes = {},
					shade_terminals = true,
					start_in_insert = true,
					insert_mappings = true,
					persist_size = true,
					direction = 'vertical',
					close_on_exit = true,
					shell = vim.o.shell,
					float_opts = {
						border = 'single',
						width = 200,
						height = 50,
						winblend = 3,
						highlights = {
							border = "Normal",
							background = "Normal",
						}
					}
				}
			)
		end
	}
}
