return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim"
	},
	config = function()
		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
		vim.keymap.set("n", "<leader>fG", builtin.git_files, { desc = "Find files globally" })
		vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Find files in Git repo" })
	end
}
