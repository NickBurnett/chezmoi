-- Text Editing Bindings
vim.keymap.set({ "i" }, "<M-BS>", "<C-w>")

-- Vim Bindings
vim.keymap.set({ "n" }, "<leader>Q", function()
        vim.cmd("NvimTreeClose")
        vim.cmd("q!")
end)

-- Window Bindings
vim.keymap.set({ "n" }, "<leader>w", "<C-W>", { desc = "Window Management" })

-- Diagnostic Bindings
vim.keymap.set({ "n" }, "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostic message" })

-- LSP Bindings
vim.keymap.set({ "n" }, "<leader>hh", vim.lsp.buf.hover, { desc = "LSP Hover Description" })
vim.keymap.set({ "n" }, "<leader>jd", vim.lsp.buf.definition, { desc = "LSP Jump-to-definition" })
vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Actions" })
vim.keymap.set({ "n" }, "<leader>fm", vim.lsp.buf.format, { desc = "Format File" })
vim.keymap.set({ "n" }, "<leader>rn", vim.lsp.buf.rename, { desc = "Rename Entity" })
vim.keymap.set({ "n" }, "<leader>gr", require("telescope.builtin").lsp_references, { desc = "Get References" })

-- Bufferline Bindings
vim.keymap.set({ "n" }, "H", function()
        vim.cmd("bprev")
end, { desc = "Cycle previous buffer" })

vim.keymap.set({ "n" }, "L", function()
        vim.cmd("bnext")
end, { desc = "Cycle next buffer" })

vim.keymap.set({ "n" }, "<leader><Up>", function()
        vim.cmd("tabnew")
end, { desc = "Create new tab" })

vim.keymap.set({ "n" }, "<leader><Down>", function()
        vim.cmd("tabclose")
end, { desc = "Close current tab" })

vim.keymap.set({ "n" }, "<leader><Left>", function()
        vim.cmd("tabprev")
end, { desc = "Cycle previous tab" })

vim.keymap.set({ "n" }, "<leader><Right>", function()
        vim.cmd("tabnext")
end, { desc = "Cycle next tab" })

vim.keymap.set({ "n" }, "<leader>H", function()
        vim.cmd("tabprev")
end, { desc = "Cycle prev tab" })

vim.keymap.set({ "n" }, "<leader>L", function()
        vim.cmd("tabnext")
end, { desc = "Cycle next tab" })

vim.keymap.set({ "n" }, "<leader>ef", function()
        vim.cmd("b")
end, { desc = "Select current buffer" })

vim.keymap.set({ "n" }, "<leader>qf", function()
        vim.cmd("bd")
end, { desc = "Close current buffer" })

vim.keymap.set({ "n" }, "<leader>qq", function()
        vim.cmd("bd!")
end, { desc = "Close current buffer" })

-- NVIM Tree Bindings
vim.keymap.set({ "n" }, "<leader>t", function()
        if vim.bo.filetype == "NvimTree" then
                vim.cmd("NvimTreeClose")
        else
                vim.cmd("NvimTreeOpen")
        end
end, { desc = "Toggle File View" })

