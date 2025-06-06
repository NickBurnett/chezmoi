return {
    "kevinhwang91/nvim-ufo",
    name = "nvim-ufo",
    dependencies = {
        "kevinhwang91/promise-async",
    },
    config = function()
        local ufo = require("ufo")
        ufo.setup({
            provider_selector = function(bufnr, filetype, buftype)
                return {"treesitter", "indent"}
            end
        })

    end
}
