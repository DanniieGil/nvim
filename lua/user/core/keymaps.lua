vim.g.mapleader = " "

-- ToggleTerm
vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm direction=float size=50<CR>", { desc = "Terminal" })
vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical size=50<CR>", { desc = "Terminal Vertical" })
vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal size=50<CR>", { desc = "Terminal Horizontal" })
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- Quit
vim.keymap.set("n", "<leader>qq", ":qa <CR>", { desc = "Quit all" })

-- Move line
vim.keymap.set("n", "<S-Up>", ":m-2 <CR>", { desc = "Move line to Up" })
vim.keymap.set("n", "<S-Down>", ":m+ <CR>", { desc = "Move line to Down" })

