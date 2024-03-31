return {
    'hrsh7th/nvim-cmp',
    version = false,
    event = "InsertEnter",
    dependencies = {
        {
            'L3MON4D3/LuaSnip',
            dependencies = { "rafamadriz/friendly-snippets" },
            config = function()
                require("luasnip.loaders.from_vscode").lazy_load()
            end
        },
        'saadparwaiz1/cmp_luasnip',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-buffer',
        "mtoohey31/cmp-fish"
    },
    opts = function()
        local cmp = require("cmp")
        local defaults = require("cmp.config.default")()
        return {
            window = {
                completion = {
                    border = "rounded"
                },
                documentation = {
                    border = "rounded"
                }
            },
            completion = {
                completeopt = "menu,menuone,noinsert",
            },
            snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
                ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<Tab>"] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false }),
                ["<C-e>"] = cmp.mapping.abort()
            }),
            sources = cmp.config.sources({
                { name ="nvim_lsp" },
                { name = "luasnip" }
            }, {
                { name ="path" },
                { name = "buffer" },
                { name = "fish" }
            }),
            sorting = defaults.sorting,
        }
    end
}
