local keymaps = require("core.keymaps")

return {
    "nvim-neo-tree/neo-tree.nvim",
    keys = keymaps.neotree,
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
}
