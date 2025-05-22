-- Text Editing Bindings
vim.keymap.set({ "i" }, "<M-BS>", "<C-w>")

-- Vim Bindings
vim.keymap.set({ "n" }, "<leader>Q", function()
        vim.cmd("NvimTreeClose")
        vim.cmd("q")
end)

-- Diagnostic Bindings
vim.keymap.set({ "n" }, "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostic message" })

-- LSP Bindings
vim.keymap.set({ "n" }, "<leader>hh", vim.lsp.buf.hover, {})
vim.keymap.set({ "n" }, "<leader>jd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- Bufferline Bindings
vim.keymap.set({ "n" }, "H", function()
        vim.cmd("bprev")
end, { desc = "Cycle previous buffer" })

vim.keymap.set({ "n" }, "L", function()
        vim.cmd("bnext")
end, { desc = "Cycle next buffer" })

vim.keymap.set({ "n" }, "<leader><Left>", function()
        vim.cmd("tabprev")
end, { desc = "Cycle previous tab" })

vim.keymap.set({ "n" }, "<leader><Right>", function()
        vim.cmd("tabnext")
end, { desc = "Cycle next tab" })

vim.keymap.set({ "n" }, "<leader>ef", function()
        vim.cmd("BufferLinePick")
end, { desc = "Select a buffer" })

vim.keymap.set({ "n" }, "<leader>qf", function()
    vim.cmd("BufferLinePickClose")
end, { desc = "Close a buffer" })

vim.keymap.set({ "n" }, "<leader>qq", function()
        local cmd = "bd! "
        local bufIdxToDelete = vim.api.nvim_get_current_buf()
        vim.cmd("BufferLineCyclePrev")
        vim.cmd(cmd .. bufIdxToDelete)
end, { desc = "Close current buffer" })

-- NVIM Tree Bindings
vim.keymap.set({ "n" }, "<leader>t", function()
        if vim.bo.filetype == "NvimTree" then
                vim.cmd("NvimTreeClose")
        else
                vim.cmd("NvimTreeOpen")
        end
end, { desc = "Toggle File View" })

