return {
        "akinsho/bufferline.nvim",
        name = "bufferline",
        enabled = false,
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
                                custom_filter = function(bufnr)
                                        local ft = vim.bo[bufnr].filetype
                                        return ft ~= "lspinfo"
                                end,
                                diagnostics = "nvim_lsp",
                                separator_style = "thin",
                                themable = true,
                                mode = "buffers",

                        }
                })
        end
}
