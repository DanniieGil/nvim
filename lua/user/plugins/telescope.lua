return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 
      'nvim-lua/plenary.nvim',
      "nvim-telescope/telescope-live-grep-args.nvim"
    },
    config = function()
      require("telescope").load_extension("live_grep_args")
      vim.keymap.set('n', '<leader>ff', "<cmd>Telescope find_files<CR>")
      vim.keymap.set('n', '<leader>fg', "<cmd>Telescope live_grep<CR>")
      vim.keymap.set('n', '<leader>fgg', "<cmd>Telescope live_grep_args<CR>")
      vim.keymap.set('n', '<leader>fb', "<cmd>Telescope buffers<CR>")
      -- vim.keymap.set('n', '<leader>fh', "<cmd>Telescope help_tags<CR>")
    end
    }
