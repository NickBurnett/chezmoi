local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config.clangd = {
	cmd = "clangd",
        capabilities = capabilities,
	filetypes = { "c", "h" },
	settings = {}
}
