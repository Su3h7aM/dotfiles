return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		opts = {
			flavour = "mocha",
			transparent_background = true,
		},
        init = function()
            vim.cmd.colorscheme "catppuccin"
        end
	},
	{
        "folke/tokyonight.nvim",
        name = "tokyonight",
        lazy = true,
        opts = {
		    style = "storm",
            light_style = "night",
            transparent = true,
		},
	}
}
