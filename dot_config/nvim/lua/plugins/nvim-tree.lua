return {
        "nvim-tree/nvim-tree.lua",
        name = "nvim-tree",
        dependencies = {
                "nvim-tree/nvim-web-devicons",
        },
        config = function()
                local nvimtree = require("nvim-tree")
                nvimtree.setup({
                        git = {
                                ignore = false,
                        }
                })
        end
}
