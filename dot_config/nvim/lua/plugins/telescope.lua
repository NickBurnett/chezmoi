return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim"
	},
	config = function()
		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<leader>p", builtin.find_files, { desc = "Find files" })
		vim.keymap.set("n", "<leader>g", builtin.git_files, { desc = "Find files in Git repo" })
	end
}
