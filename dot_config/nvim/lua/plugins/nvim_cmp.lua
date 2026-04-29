return {
        "hrsh7th/nvim-cmp",
        name = "nvim-cmp",
        dependencies = {
                "hrsh7th/cmp-buffer",
                "hrsh7th/cmp-path",
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-cmdline",
                "L3MON4D3/LuaSnip",
                "saadparwaiz1/cmp_luasnip"
        },
        requires = {
                "onsails/lspkind.nvim"
        },
        opts = function(_, opts)
                opts.sources = opts.sources or {}
        end,
        config = function()
                local cmp = require("cmp")
                local compare = require("cmp.config.compare")
                local luasnip = require("luasnip")
                local lspkind = require("lspkind")

                cmp.setup({
                        formatting = {
                                format = lspkind.cmp_format({})
                        },
                        snippet = {
                                expand = function(args)
                                        luasnip.lsp_expand(args.body)
                                end
                        },
                        completion = {
                                autocomplete = {
                                        require("cmp.types").cmp.TriggerEvent.TextChanged
                                }
                        },
                        sources = cmp.config.sources({
                                { name = "nvim_lsp" },
                                { name = "luasnip" },
                                { name = "buffer" },
                                { name = "path" }
                        }),
                        mapping = cmp.mapping.preset.insert({
                                ["<C-Space>"] = cmp.mapping(function(fallback)
                                        if cmp.visible() then
                                                cmp.abort()
                                        else
                                                cmp.complete()
                                        end
                                end, { "i", "s" }),
                                ["<Tab>"] = cmp.mapping(function(fallback)
                                        if cmp.visible() then
                                                cmp.select_next_item()
                                        elseif luasnip.expand_or_jumpable() and luasnip.session.current_nodes[vim.api.nvim_get_current_buf()] then
                                                luasnip.expand_or_jump()
                                        else
                                                fallback()
                                        end
                                end, { "i", "s" }),
                                ["<S-Tab>"] = cmp.mapping(function(fallback)
                                        if cmp.visible() then
                                                cmp.select_prev_item()
                                        elseif luasnip.expand_or_jumpable() and luasnip.jumpable(1) then
                                                luasnip.jump(1)
                                        else
                                                fallback()
                                        end
                                end, { "i", "s" }),
                                ["<CR>"] = cmp.mapping.confirm({ select = false })
                        })
                })
        end
}
