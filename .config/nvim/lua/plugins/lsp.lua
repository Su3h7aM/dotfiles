local keymaps = require("core.keymaps")

local M = {}

local servers = { "lua_ls", "bashls", "html", "htmx", "gopls", "templ", "biome" }

M[1] = {
    "williamboman/mason.nvim",
    opts = {
        ui = {
            border = "rounded",
            width = 0.8,
            height = 0.8
        }
    },
    keys = keymaps.mason
}

M[2] = {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "williamboman/mason.nvim",
        "neovim/nvim-lspconfig"
    },
    opts = {
        ensure_installed = servers,
        automatic_installation = true,
    }
}

M[3] = {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "folke/neodev.nvim"
    },
    config = function()
        local lspconfig = require("lspconfig")
        local cmp = require("cmp_nvim_lsp")

        local cpm_capabilities = cmp.default_capabilities()

        for _, server in pairs(servers) do
            local opts = {
                capabilities = cpm_capabilities
            }

            local require_ok, settings = pcall(require, "plugins.lsp." .. server)
            if require_ok then
                opts = vim.tbl_deep_extend("force", settings, opts)
            end

            if server == "lua_ls" then
                require("neodev").setup({})
            end

            lspconfig[server].setup(opts)
        end
    end
}

return M

