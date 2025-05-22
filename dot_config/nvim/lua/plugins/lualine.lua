return {
        "nvim-lualine/lualine.nvim",
        name = "lualine",
        config = function()
                require("lualine").setup({
                        sections = {
                                lualine_c = {
                                        {
                                                "filename",
                                                path = 1,
                                        }
                                }
                        }
                })
        end,
}

