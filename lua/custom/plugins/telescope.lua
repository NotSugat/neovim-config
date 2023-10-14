return {
	{
		'nvim-telescope/telescope.nvim',
		branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			require('telescope').setup {

				defaults = {
					mappings = {
						i = {
							['<C-u>'] = false,
							['<C-d>'] = false,
						},
					},
				},

				vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles,
					{ desc = '[?] Find recently opened files' }),
				vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers,
					{ desc = '[ ] Find existing buffers' }),
				vim.keymap.set('n', '<leader>/', function()
					require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
						winblend = 10,
						previewer = false,
					})
				end, { desc = '[/] Fuzzily search in current buffer' }),

				vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' }),
				vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = '[F]ind [F]iles' }),
				vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' }),
				vim.keymap.set('n', '<leader>fw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' }),
				vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' }),
				vim.keymap.set('n', '<leader>fd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' }),
				vim.keymap.set('n', '<leader>fk', require('telescope.builtin').keymaps, { desc = '[S]earch [K]eymaps' }),
			}
		end,
	},

	{
		'nvim-telescope/telescope-fzf-native.nvim',
		-- NOTE: If you are having trouble with this installation,
		--       refer to the README for telescope-fzf-native for more instructions.
		build = 'make',
		cond = function()
			return vim.fn.executable 'make' == 1
		end,
	},


}
