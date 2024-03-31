return {
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        lazy = true,
        event = { "BufReadPre", "BufNewFile" },
        opts = {
            indent = {
                char = "│",
                tab_char = "│",
            },
            scope = { enabled = false },
        }
    },
    {
        "echasnovski/mini.indentscope",
        version = false, -- wait till new 0.7.0 release to put it back on semver
        lazy = true,
        event = { "BufReadPre", "BufNewFile" },
        opts = {
            symbol = "│",
            options = {
                try_as_border = true
            },
        },
    }
}
