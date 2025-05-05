return {
	"catppuccin/nvim",
	name = "catppuccin",
        dependencies = {
                "nvim-lualine/lualine.nvim",
        },
	priority = 1000,
        config = function()
                require("catppuccin").setup({
                        flavour = "macchiato",
                        transparent_background = true,
                        integrations = {
                                nvimtree = true,
                        }
                })
        end
}

