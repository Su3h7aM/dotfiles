local keymaps = {}

local map = vim.keymap.set

function keymaps.global()
    -- Lazy
    map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Open lazy menu" })

    -- Move Lines
    map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
    map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
    map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
    map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
    map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
    map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

    -- Change buffer
    map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
    map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })

    -- Clear search with <esc>
    map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

    -- Save file
    map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

    -- Quit all
    map("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })

    -- Tabs 
    map("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
    map("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
    map("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
    map("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
end

keymaps.telescope = {
    {"<leader><space>", "<cmd>Telescope find_files<cr>", desc = "Find files"},
    {"<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep"},
    {"<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers"},
    {"<Leader>fh", "<cmd>lua require'telescope.builtin'.find_files({ find_command = { 'rg', '--files', '--iglob', '!.git', '--hidden', '--no-ignore'} })<cr>", desc = "Find with hidden files"},
    {"<leader>ff", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Current buffer fuzzy find"}
}

keymaps.neotree = {
    {"<leader>e", "<cmd>Neotree toggle<CR>"},
    {"<leader>d", "<cmd>Neotree reveal_force_cwd<CR>"}
}

keymaps.mason = {
    {"<leader>m", "<cmd>Mason<cr>"}
}

keymaps.ts = {
    treesitter = {
        init_selection = "<leader>ss",
        node_decremental = "<leader>sd",
        node_incremental = "<leader>si",
        scope_incremental = "<leader>sc"
    },
    textobjects = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
        ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
    },
    selection_modes = {
        ['@parameter.outer'] = 'v',
        ['@function.outer'] = 'V',
        ['@class.outer'] = '<c-v>',
    },
    context = function()
        map("n", "<leader>c", function()
            require("treesitter-context").go_to_context(vim.v.count1)
        end, { silent = true })
    end
}

return keymaps
