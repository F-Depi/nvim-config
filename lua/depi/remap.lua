vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<M-k>", ":m '<-2<CR>gv=gv")

-- Allows to paste without loosing the buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Scroll half page keeping the cursur in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Run the last :! command
vim.keymap.set("n", "<F8>", ":w<ENTER>:make<ENTER>")

-- I should be able to move around in folder but it doesn't work
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Start replacing the word you are over everywhere in the file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Autoclose parenthesis and others + move the cursor to the right if the closing parenthesis is already there
--vim.keymap.set('i', '{', '{}<Left>', { noremap = true })
--vim.keymap.set('i', '[', '[]<Left>', { noremap = true })
--vim.keymap.set('i', '(', '()<Left>', { noremap = true })

--vim.api.nvim_set_keymap('i', '}', [[getline('.')[col('.')-1] == '}' ? "\<Right>" : "}" ]], { expr = true, noremap = true, silent = true })
--vim.api.nvim_set_keymap('i', ']', [[getline('.')[col('.')-1] == ']' ? "\<Right>" : "]" ]], { expr = true, noremap = true, silent = true })
--vim.api.nvim_set_keymap('i', ')', [[getline('.')[col('.')-1] == ')' ? "\<Right>" : ")" ]], { expr = true, noremap = true, silent = true })
--vim.api.nvim_set_keymap('i', '"', [[getline('.')[col('.')-1] == '"' ? "\<Right>" : "\"\"<Left>" ]], { expr = true, noremap = true, silent = true })
--vim.api.nvim_set_keymap('i', '.', [[getline('.')[col('.')-1] == "." ? "\<Right>" : "." ]], { expr = true, noremap = true, silent = true })

-- Auto enter + indent with {}
vim.api.nvim_set_keymap('i', '<CR>', [[search('{\%#}', 'n') ? "\<CR>\<CR>\<Up>\<C-f>" : "\<CR>"]], { expr = true, noremap = true, silent = true })

