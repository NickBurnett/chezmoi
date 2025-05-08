return {
        "akinsho/bufferline.nvim",
        name = "bufferline",
        dependencies = {
                "nvim-tree/nvim-web-devicons",
        },
        requires = {
                "catppuccin/nivm"
        },
        config = function()
                vim.opt.termguicolors = true
                local bufferline = require("bufferline")
                bufferline.setup({
                        highlights = require("catppuccin.groups.integrations.bufferline").get(),
                        options = {
                                diagnostics = "nvim_lsp",
                                separator_style = "thin",
                                themable = true,
                                mode = "buffers",
                        }
                })
        end
}
