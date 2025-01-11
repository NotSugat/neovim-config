return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- lua
				null_ls.builtins.formatting.stylua,

				-- javascript / typescript
				null_ls.builtins.formatting.prettierd,
				require("none-ls.diagnostics.eslint_d"),

				-- python
				-- null_ls.builtins.formatting.autopep8,
				-- null_ls.builtins.diagnostics.flake8
			},
		})

		vim.keymap.set("n", "<leader>nl", vim.lsp.buf.format, {})
	end,
	requires = { "nvim-lua/plenary.nvim" },
}
