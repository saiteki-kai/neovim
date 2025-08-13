-- Leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Indentation
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.wrap = false

-- Lines
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.scrolloff = 10

-- Appearence
vim.opt.termguicolors = true
vim.opt.winborder = "single"
vim.opt.signcolumn = "yes"
-- Cursor
vim.opt.guicursor = ""
vim.opt.cursorline = true
--- Status
vim.opt.showcmdloc = "tabline"
vim.opt.showcmd = true
vim.opt.showmode = false
-- Transparency
vim.opt.winblend = 0
vim.opt.pumblend = 0
-- Completion
vim.opt.completeopt = "menuone,noinsert,noselect"
vim.opt.pumheight = 10

-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.inccommand = "split"

-- Others
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("~/.vim/undodir")
vim.opt.autochdir = false
vim.opt.modifiable = true
vim.opt.encoding = "utf-8"
vim.opt.isfname:append("@-@")
vim.opt.iskeyword:append("-")
vim.opt.mouse:append("a")
vim.opt.updatetime = 250
vim.opt.timeoutlen = 500

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this vim.opt.on if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
    vim.opt.clipboard = "unnamedplus"
end)

vim.filetype.add({
    pattern = {
        [".*/hypr/**/.*%.conf"] = "hyprlang",
    },
})
