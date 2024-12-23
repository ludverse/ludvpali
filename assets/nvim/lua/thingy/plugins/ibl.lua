return {
	{
		"lukas-reineke/indent-blankline.nvim",
		event = "BufEnter",
		main = "ibl",
		opts = {
			indent = { char = "▏" },
		},
		dependencies = { "nvim-treesitter/nvim-treesitter" }
	}
}