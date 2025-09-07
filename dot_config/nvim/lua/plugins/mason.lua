return {
        "williamboman/mason.nvim",
        name = "mason",
        dependencies = {
                "williamboman/mason-lspconfig.nvim",
        },
        config = function()
                require("mason").setup()
                require("mason-lspconfig").setup({
                        ensure_installed = {
                                "bashls",
                                "dockerls",
                                "gopls",
                                "helm_ls",
                                "lua_ls",
                                "pyright",
                                "taplo",
                                "ts_ls",
                                "yamlls",
                        },
                })
        end,
}

