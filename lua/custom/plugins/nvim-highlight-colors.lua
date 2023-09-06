return {
	"brenoprata10/nvim-highlight-colors",
	-- Optional dependency
	dependencies = { 'hrsh7th/nvim-cmp' },
	config = function()
		require("nvim-highlight-colors").setup {}
	end,
}
