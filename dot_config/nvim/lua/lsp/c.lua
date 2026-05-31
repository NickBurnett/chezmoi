vim.lsp.config("clangd", {
	cmd = { "clangd" },
	filetypes = { "c" },
	settings = {}
})

vim.lsp.enable("clangd")
