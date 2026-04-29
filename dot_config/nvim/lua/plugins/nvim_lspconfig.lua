return {
	"neovim/nvim-lspconfig",
	name = "nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	opts = function(_, opts)
		return {
			diagnostics = {
				underline = true,
				update_in_insert = true,
				severity_sort = true,
				signs = {
					text = {
						[vim.diagnostic.severity.ERROR] = "",
						[vim.diagnostic.severity.WARN] = "",
						[vim.diagnostic.severity.INFO] = "",
						[vim.diagnostic.severity.HINT] = "󰌵",
					}
				}
			},
			inlay_hints = {
				enabled = true
			},
			codelens = {
				enabled = true
			},
			folds = {
				enabled = true
			},
			format = {
				enabled = true
			}
		}
	end,
	config = function()
	end
}
