return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function() 
    vim.opt.termguicolors = true
    require("bufferline").setup{}
    vim.keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
    vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
    vim.keymap.set("n", "<leader>bd", "<cmd>bd<cr>", { desc = "Close buffer" })
  end
}


