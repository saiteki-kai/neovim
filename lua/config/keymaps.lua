local map = vim.keymap.set

-- 
map("n", "<leader>s", ":w<CR>")
map("n", "<leader>q", ":q<CR>")

-- Clear search highlights
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Cycle buffers
-- map("n", "<C-S-j>", ":bprev<CR>", { noremap = true, silent = true })
map("n", "<C-S-k>", ":bnext<CR>", { noremap = true, silent = true })

-- LSP
map("n", "<leader>gd", vim.lsp.buf.definition, {})
map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- Indent
map("n", "<Tab>", ">0", { noremap = true, silent = true })
map("n", "<S-Tab>", "<0", { noremap = true, silent = true })
map("v", "<Tab>", ">gv", { noremap = true, silent = true })
map("v", "<S-Tab>", "<gv", { noremap = true, silent = true })

