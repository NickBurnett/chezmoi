return {
	"folke/neodev.nvim",
        name = "neodev",
	opts = {},
        priority = 1000,
        lazy = false,
        config = function()
                require("neodev").setup({})
        end
}
