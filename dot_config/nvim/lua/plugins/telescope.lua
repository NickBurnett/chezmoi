return {
	"nvim-telescope/telescope.nvim",
        name = "telescope",
	dependencies = {
		"nvim-lua/plenary.nvim"
	},
	config = function()
		local builtin = require("telescope.builtin")

                vim.keymap.set("n", "<leader>fG", builtin.live_grep, { desc = "Live Grep" })
		vim.keymap.set("n", "<leader>ff", function()
			builtin.find_files({
				prompt_title = "Directory Search",
				find_command = {
					"fd",
					"--type", "f",
					"--hidden"
				}
			})
		end, { desc = "Find files" })
		vim.keymap.set("n", "<leader>fF", function()
			builtin.find_files({
				prompt_title = "Global Search",
				cwd = vim.fn.expand("~"),
				find_command = {
					"fd",
					"--type", "f",
					"--hidden",
				}
			})
		end, { desc = "Find files globally" })
		vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Find files in Git repo" })
	end
}
