return {
    "smjonas/inc-rename.nvim",
    --event = { "BufReadPre", "BufNewFile" },
    keys = {
        {"<leader>rn", ":IncRename "}
    },
    config = true
}
