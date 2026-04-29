-- Vim Bindings
vim.keymap.set({ "n" }, "<leader>Q", function()
        vim.cmd("NvimTreeClose")
        vim.cmd("q!")
end)

-- Window Bindings
vim.keymap.set({ "n" }, "<leader>w", "<C-W>", { desc = "Window Management" })

-- Diagnostic Bindings
vim.keymap.set({ "n" }, "<leader>d", vim.diagnostic.open_float, { desc = "Show Diagnostic Message" })

-- LSP Bindings
vim.keymap.set({ "n" }, "<leader>hh", vim.lsp.buf.hover, { desc = "LSP Hover Description" })
vim.keymap.set({ "n" }, "<leader>jd", vim.lsp.buf.definition, { desc = "LSP Jump-to-definition" })
vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Actions" })
vim.keymap.set({ "n" }, "<leader>fm", vim.lsp.buf.format, { desc = "LSP Format File" })
vim.keymap.set({ "n" }, "<leader>rn", vim.lsp.buf.rename, { desc = "LSP Rename Entity" })
vim.keymap.set({ "n" }, "<leader>gr", require("telescope.builtin").lsp_references, { desc = "LSP Get References" })

-- Buffer Bindings
vim.keymap.set({ "n" }, "H", function()
        vim.cmd("bprev")
end, { desc = "Cycle Preview Buffer" })
vim.keymap.set({ "n" }, "L", function()
        vim.cmd("bnext")
end, { desc = "Cycle Next Buffer" })
vim.keymap.set({ "n" }, "<leader>ef", function()
        vim.cmd("b")
end, { desc = "Select Current Buffer" })
vim.keymap.set({ "n" }, "<leader>qf", function()
        vim.cmd("bd")
end, { desc = "Close Current Buffer" })
vim.keymap.set({ "n" }, "<leader>qw", function()
        vim.cmd("bp | bd#")
end, { desc = "Close Current Buffer WITHOUT Closing the Window" })
vim.keymap.set({ "n" }, "<leader>qq", function()
        vim.cmd("bd!")
end, { desc = "Force Close Current Buffer" })

-- NVim Tree Bindings
vim.keymap.set({ "n" }, "<leader>t", function()
        if vim.bo.filetype == "NvimTree" then
                vim.cmd("NvimTreeClose")
        else
                vim.cmd("NvimTreeOpen")
        end
end, { desc = "Toggle File View" })
