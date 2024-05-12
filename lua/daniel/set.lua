local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.smartindent = true
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
-- opt.ignorecase = true -- ignore case when searching
-- opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
opt.hlsearch = false
opt.incsearch = true
opt.termguicolors = true
-- cursor line
opt.cursorline = true -- highlight the current cursor line
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")
-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
-- opt.swapfile = false

opt.timeoutlen = 300
opt.clipboard = unnamedplus

-- opt.mousemoveevent = true
vim.opt.updatetime = 50

vim.opt.encoding = "utf8"
vim.opt.fileencoding = "utf8"
