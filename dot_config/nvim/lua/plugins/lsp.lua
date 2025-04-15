return {
	"neovim/nvim-lspconfig",
	name = "lsp",
        lazy = false,
	config = function()
		require("lsp")
	end
}
