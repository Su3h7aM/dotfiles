return {
    "nvim-lualine/lualine.nvim",
    lazy = true,
    event = "VeryLazy",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = true,
    opts = {
        options = {
            theme = "auto",
            globalstatus = true,
            disabled_filetypes = {
                statusline = { "dashboard", "alpha", "starter" }
            },
        }
    }
}
