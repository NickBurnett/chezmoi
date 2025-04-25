return {
        "nvim-tree/nvim-tree.lua",
        name = "nvim-tree",
        config = function()
                local nvimtree = require("nvim-tree")
                nvimtree.setup({})
        end
}
