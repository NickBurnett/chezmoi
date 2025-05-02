return {
    "nvim-treesitter/nvim-treesitter",
    name = "treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                "bash",
                "go",
                "lua",
                "python",
                "toml",
            },
            ignore_install = {},
            auto_install = true,
            modules = {},
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
