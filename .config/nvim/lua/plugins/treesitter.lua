local keymaps = require("core.keymaps")

return {
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-context",
            "nvim-treesitter/nvim-treesitter-textobjects"
        },
        event = { "BufReadPre", "BufNewFile" },
        main = "nvim-treesitter.configs",
        opts = {
            ensure_installed = { 'regex', 'markdown_inline', 'lua', 'python', 'html', 'css', 'tsx', 'javascript', 'typescript', 'vimdoc', 'vim', 'bash', 'fish', 'go', 'templ' },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                disable = {}
            },
            indent = {
                enable = true,
                disable = {}
            },
            incremental_selection = {
                enable = true,
                disable = {},
                keymaps = keymaps.ts.treesitter
            },
            textobjects = {
                select = {
                    enable = true,
                    lookahead = true,
                    keymaps = keymaps.ts.textobjects,
                    selection_modes = keymaps.ts.selection_modes,
                    include_surrounding_whitespace = true
                },
            },
        },
        build = ":TSUpdate"
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        init = keymaps.ts.context,
        opts = {
            enable = true,
            max_lines = 0,
            min_window_height = 0,
            line_numbers = true,
            multiline_threshold = 100,
            mode = "cursor", -- Choices: 'cursor', 'topline'
            on_attach = nil
        }
    }
}
