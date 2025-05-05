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
				"gopls",
				"lua_ls",
                "pyright",
				"taplo",
			},
		})
	end,
}

