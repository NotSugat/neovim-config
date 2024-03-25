return {
	'ThePrimeagen/harpoon',
	config = function()
		vim.keymap.set('n', '<leader>m', function()
			vim.api.nvim_command('lua require("harpoon.mark").add_file()')
		end, { desc = 'Add file to harpoon marks' })

		--remove file
		vim.keymap.set('n', '<leader><S-m>', function()
			vim.api.nvim_command('lua require("harpoon.mark").rm_file()')
		end, { desc = 'Remove file from harpoon marks' })

		-- toggle quick menu
		vim.keymap.set('n', '<leader>s', function()
			vim.api.nvim_command('lua require("harpoon.ui").toggle_quick_menu()')
		end, { desc = 'Toggle harpoon quick menu' })

		require("telescope").load_extension('harpoon')

		-- navigation
		vim.keymap.set('n', '<Tab>', function()
			vim.api.nvim_command('lua require("harpoon.ui").nav_next()')
		end, { desc = 'Navigate to next harpoon mark' })

		vim.keymap.set('n', '<S-Tab>', function()
			vim.api.nvim_command('lua require("harpoon.ui").nav_prev()')
		end, { desc = 'Navigate to previous harpoon mark' })

		vim.keymap.set('n', '<leader>1', function()
			vim.api.nvim_command('lua require("harpoon.ui").nav_file(1)')
		end, { desc = 'Navigate to harpoon mark 1' })

		vim.keymap.set('n', '<leader>2', function()
			vim.api.nvim_command('lua require("harpoon.ui").nav_file(2)')
		end, { desc = 'Navigate to harpoon mark 2' })

		vim.keymap.set('n', '<leader>3', function()
			vim.api.nvim_command('lua require("harpoon.ui").nav_file(3)')
		end, { desc = 'Navigate to harpoon mark 3' })
	end,

}
