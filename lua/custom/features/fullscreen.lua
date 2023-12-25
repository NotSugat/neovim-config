_G.T = {
	win = 0,
	toggle = true,
	previous_height = 0,
	previous_width = 0
}

function T:toggle_fullscreen()
	self.win = vim.api.nvim_get_current_win()

	if self.toggle then
		-- Save height and width
		self.previous_height = vim.api.nvim_win_get_height(self.win)
		self.previous_width = vim.api.nvim_win_get_width(self.win)

		-- Turn window fullscreen
		vim.api.nvim_command([[wincmd |]])
	else
		-- Back to the previous size
		vim.api.nvim_win_set_height(self.win, self.previous_height)
		vim.api.nvim_win_set_width(self.win, self.previous_width)
	end

	-- toggle
	self.toggle = not self.toggle
end

-- Map the function to <leader>\ in normal mode
vim.api.nvim_set_keymap('n', '<leader>\\', '<cmd>lua T:toggle_fullscreen()<cr>', { noremap = true, silent = true })
