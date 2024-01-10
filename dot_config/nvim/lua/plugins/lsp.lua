local keymaps = require("core.keymaps")

return {
    {
        "williamboman/mason.nvim",
        opts = {
            ui = {
                border = "rounded",
                width = 0.8,
                height = 0.8
            }
        },
        keys = keymaps.mason
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "neovim/nvim-lspconfig"
        },
        opts = {
            ensure_installed = { "lua_ls" },
            automatic_installation = true,
        }
    },
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            { "folke/neodev.nvim", opts = {} }
        },
        config = function()
            local lspconfig = require("lspconfig")
            local cmp = require("cmp_nvim_lsp")

            local capabilities = cmp.default_capabilities()

            lspconfig["lua_ls"].setup({
                capabilities = capabilities
            })
        end
    }
}
