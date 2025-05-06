return {
        "neovim/nvim-lspconfig",
        name = "lsp",
        lazy = false,
        config = function()
                require("lsp")
                vim.diagnostic.config({
                        signs = {
                                text = {
                                        [vim.diagnostic.severity.ERROR] = "",
                                        [vim.diagnostic.severity.WARN] = "",
                                        [vim.diagnostic.severity.INFO] = "",
                                        [vim.diagnostic.severity.HINT] = "󰌵",
                                },
                                linehl = {
                                        [vim.diagnostic.severity.ERROR] = "Error",
                                        [vim.diagnostic.severity.WARN] = "Warn",
                                        [vim.diagnostic.severity.INFO] = "Info",
                                        [vim.diagnostic.severity.HINT] = "Hint",
                                }
                        },
                })
        end
}

