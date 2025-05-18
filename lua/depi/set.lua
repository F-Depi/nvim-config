vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "120"
vim.opt.numberwidth = 3

--[[
-- Define a function to determine fold levels
local function foldexpr(lnum)
    -- Get the content of the line
    local line = vim.fn.getline(lnum)
    -- Check if the line contains '##'
    if string.find(line, '##') then
        -- Return level 1 for folding
        return 1
    else
        -- Return 0 to indicate no folding
        return 0
    end
end

-- Set foldmethod and foldexpr using nvim_set_option
--vim.api.nvim_set_option('foldmethod', 'indent')
vim.api.nvim_set_option('foldclose', 'all')
vim.api.nvim_set_option('foldmethod', 'expr')
vim.api.nvim_set_option('foldexpr', 'v:lua.foldexpr(v:lnum)')
]]--

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false
