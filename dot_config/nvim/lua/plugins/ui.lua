local ascii =[[
███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
]]

ascii = string.rep("\n", 8) .. ascii .. "\n\n"
local logo = vim.split(ascii, "\n")

return {
    {
        "stevearc/dressing.nvim",
        event = "VeryLazy",
        opts = {
            input = {
                enabled = true,
            }
        },
    },
    {
        "rcarriga/nvim-notify",
        opts = {
            background_colour = "#000000",
            stages = "fade_in_slide_out", -- fade_in_slide_out, fade, slide, static
            render = "default",
            timeout = 2000
        },
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            views = {
                mini = {
                    win_options = {
                        winblend = 0
                    }
                }
            },
            lsp = {
                progress = { enabled = true },
                override = {
                    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                    ["vim.lsp.util.stylize_markdown"] = true,
                    ["cmp.entry.get_documentation"] = true,
                },
                hover = { enabled = true },
                signature = { enabled = true },
            },
            -- you can enable a preset for easier configuration
            presets = {
                bottom_search = false,
                command_palette = true,
                long_message_to_split = true,
                inc_rename = true,
                lsp_doc_border = true,
            },
        },
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify"
        }
    },
    {
        "nvimdev/dashboard-nvim",
        event = "VimEnter",
        opts = {
            theme = "doom",
            hide = {
                statusline = false,
            },
            config = {
                header = logo,
                center = {
                    { action = "Telescope find_files",                                     desc = " Find file",       icon = " ", key = "f" },
                    { action = "ene | startinsert",                                        desc = " New file",        icon = " ", key = "n" },
                    { action = "Telescope oldfiles",                                       desc = " Recent files",    icon = " ", key = "r" },
                    { action = "Telescope live_grep",                                      desc = " Find text",       icon = " ", key = "g" },
                    { action = "Lazy",                                                     desc = " Lazy",            icon = "󰒲 ", key = "l" },
                    { action = "qa",                                                       desc = " Quit",            icon = " ", key = "q" },
                },
                footer = function()
                    local stats = require("lazy").stats()
                    local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
                    return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
                end,
            },
        }
    }
}
