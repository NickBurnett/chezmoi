return {
	"nvim-telescope/telescope.nvim",
        name = "telescope",
	dependencies = {
		"nvim-lua/plenary.nvim",
                "nvim-telescope/telescope-fzf-native.nvim",
                "nvim-telescope/telescope-ui-select.nvim",
	},
	config = function()
                local telescope = require("telescope")
                telescope.setup({
                        extensions = {
                                fzf = {
                                        fuzzy = true,
                                        override_generic_sorter = true,
                                        override_file_sorter = true,
                                        case_mode = "smart_case",
                                },
                                ["ui-select"] = {
                                        require("telescope.themes").get_dropdown({})
                                }
                        }
                })
                telescope.load_extension("fzf")
                telescope.load_extension("ui-select")

		local builtin = require("telescope.builtin")

                vim.keymap.set("n", "<leader>fG", builtin.live_grep, { desc = "Live Grep" })
		vim.keymap.set("n", "<leader>ff", function()
			builtin.find_files({
				prompt_title = "Directory File Search",
				find_command = {
					"fd",
					"--type", "f",
					"--hidden"
				}
			})
		end, { desc = "Find files" })
		vim.keymap.set("n", "<leader>fF", function()
			builtin.find_files({
				prompt_title = "Global File Search",
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
