-- setting leader to <space>
vim.g.mapleader = ' '
vim.g.localmapleader = ' '


-- -- clipboard
-- -- copy
vim.keymap.set("v", "<leader>y", [["+y]], { desc = "Copy to clipboard" })
vim.keymap.set("n", "<leader>y", [["+y]], { desc = "Copy to clipboard" })
-- cut
vim.keymap.set("v", '"+d', "<leader>d", { desc = "Cut to clipboard" })
vim.keymap.set("n", '"+d', "<leader>d", { desc = "Cut to clipboard" })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', 'gl', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Terminal opens a horizontal split window on Ctrl + j
vim.keymap.set("n", "<c-`>", '<cmd>ToggleTerm<cr>', { desc = 'Toggle terminal' })

-- split screen shortcut
vim.keymap.set('n', "<leader>|", "<cmd>vnew<cr>", { desc = 'Vertical split' })

-- mappings custom
vim.keymap.set('n', '<Esc>', '<cmd>noh<cr>')
vim.keymap.set('n', '<C-s>', '<cmd>w<cr>')
vim.keymap.set('i', '<C-s>', function()
	vim.cmd('w')
end)
-- format on save
vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]])

-- turn off automatic comments on new lines
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = "*",
	callback = function()
		vim.opt.formatoptions:remove({ "o" })
	end,
})
