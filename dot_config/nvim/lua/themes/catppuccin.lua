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
                                cmp = true,
                                fzf = true,
                                mason = true,
                                nvimtree = true,
                                telescope = true,
                        },
                        custom_highlights = function(colors)
                                return {
                                        NormalFloat = { bg = colors.crust },
                                        FloatBorder = { bg = colors.crust, fg = colors.surface2 },
                                        MasonNormal = { bg = colors.crust },
                                        LazyNormal = { bg = colors.crust },
                                        TelescopeNormal = { bg = colors.crust },
                                        TelescopeBorder = { bg = colors.crust, fg = colors.surface2 },
                                }
                        end
                })
        end
}

