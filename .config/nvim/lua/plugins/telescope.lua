local keymaps = require("core.keymaps")

return {
	{
		"nvim-telescope/telescope.nvim",
        branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
            "nvim-treesitter/nvim-treesitter",
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make",
                config = function ()
                    require("telescope").load_extension("fzf")
                end
            }
		},
        opts = {
            extensions = {
                fzf = {
                    fuzzy = true,
                    override_generic_sorter = true,
                    override_file_sorter = true,
                    case_mode = "smart_case"
                }
            }
        },
        keys = keymaps.telescope
	}
}

