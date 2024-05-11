return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.6',
  dependencies = { 
    'nvim-lua/plenary.nvim',
    "nvim-telescope/telescope-live-grep-args.nvim"
  },
  config = function()
    -- require("telescope").load_extension("live_grep_args")
    -- vim.keymap.set('n', '<leader>pf', "<cmd>Telescope find_files<CR>")
    -- vim.keymap.set('n', '<leader>pg', "<cmd>Telescope live_grep<CR>")
    -- vim.keymap.set('n', '<leader>pgg', "<cmd>Telescope live_grep_args<CR>")
    -- vim.keymap.set('n', '<leader>pb', "<cmd>Telescope buffers<CR>")

    require('telescope').setup({})

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
    vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    vim.keymap.set('n', '<leader>pws', function()
      local word = vim.fn.expand("<cword>")
      builtin.grep_string({ search = word })
    end)
    vim.keymap.set('n', '<leader>pWs', function()
      local word = vim.fn.expand("<cWORD>")
      builtin.grep_string({ search = word })
    end)
    vim.keymap.set('n', '<leader>ps', function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") })
    end)
    vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
  end
}
