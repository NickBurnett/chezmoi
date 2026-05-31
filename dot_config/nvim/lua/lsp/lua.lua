vim.lsp.config("lua_ls", {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	settings = {
		Lua = {
                        diagnostics = {
                                globals = { "vim" },
                        },
			runtime = {
				version = "LuaJIT"
			}
		}
	}
})
vim.lsp.enable("lua_ls")
