vim.g.mapleader = " "

-- ToggleTerm
-- vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm direction=float size=50<CR>", { desc = "Terminal" })
-- vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical size=50<CR>", { desc = "Terminal Vertical" })
-- vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal size=50<CR>", { desc = "Terminal Horizontal" })
-- function _G.set_terminal_keymaps()
--   local opts = {buffer = 0}
--   vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
--   vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
--   vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
--   vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
--   vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
--   vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
--   vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
-- end

-- vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

vim.keymap.set("n", "<leader>qq", ":qa <CR>", { desc = "Quit all" })

-- Move Lines
-- vim.keymap.set("n", "<S-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
-- vim.keymap.set("n", "<S-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
-- vim.keymap.set("i", "<S-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
-- vim.keymap.set("i", "<S-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
-- vim.keymap.set("v", "<S-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
-- vim.keymap.set("v", "<S-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- Save File
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- Better Indenting
-- vim.keymap.set("v", "<", "<gv")
-- vim.keymap.set("v", ">", ">gv")

-- better up/down
-- vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
-- vim.keymap.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
-- vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
-- vim.keymap.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- LazyGit
-- vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Open Git" })


