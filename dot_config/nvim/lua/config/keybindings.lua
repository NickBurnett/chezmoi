-- Text Editing Bindings
vim.keymap.set({ "i" }, "<M-BS>", "<C-w>")

-- Vim Bindings
vim.keymap.set({ "n" }, "<leader>qq", function()
        vim.cmd("q!")
end)

-- Diagnostic Bindings
vim.keymap.set({ "n" }, "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostic message" })

-- Bufferline Bindings
vim.keymap.set({ "n" }, "H", function()
        vim.cmd("BufferLineCyclePrev")
end, { desc = "Cycle previous buffer" })

vim.keymap.set({ "n" }, "L", function()
        vim.cmd("BufferLineCycleNext")
end, { desc = "Cycle next buffer" })

vim.keymap.set({ "n" }, "<leader>Ff", function()
        vim.cmd("BufferLinePick")
end, { desc = "Select a buffer" })

vim.keymap.set({ "n" }, "<leader>Fc", function()
        vim.cmd("BufferLinePickClose")
end, { desc = "Close a buffer" })

-- NVIM Tree Bindings
vim.keymap.set({ "n" }, "<leader>t", function()
        if vim.bo.filetype == "NvimTree" then
                vim.cmd("NvimTreeClose")
        else
                vim.cmd("NvimTreeOpen")
        end
end, { desc = "" })
