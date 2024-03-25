return {
  'akinsho/bufferline.nvim', 
  version = "*", 
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    local bufferline = require('bufferline')
    bufferline.setup({
      options = {
        mode = "buffers",
        hover = {
          enabled = true,
          delay = 0,
          reveal = {'close'}
        }, 
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            text_align = "center",
            separator = true
          }
        },
        buffer_close_icon = '',
        indicator = {
          icon = "| ",
          style = "icon"
        }, 
      },
    })
    vim.keymap.set( "n", "<leader>bp", ":BufferLineTogglePin <CR>", { desc = "Toggle pin" })
    vim.keymap.set( "n", "<leader>bP", ":BufferLineGroupClose ungrouped <CR>", { desc = "Delete non-pinned buffers" })
    vim.keymap.set( "n", "<leader>bo", ":BufferLineCloseOthers <CR>", { desc = "Delete other buffers" })
    vim.keymap.set( "n", "<leader>bcr", ":BufferLineCloseRight <CR>", { desc = "Delete buffers to the right" })
    vim.keymap.set( "n", "<leader>bcl", ":BufferLineCloseLeft <CR>", { desc = "Delete buffers to the left" })
    vim.keymap.set( "n", "<leader>bl", ":BufferLinePick <CR>", { desc = "Select buffer" })
    vim.keymap.set( "n", "<S-h>", ":BufferLineCyclePrev <CR>", { desc = "Prev buffer" })
    vim.keymap.set( "n", "<S-l>", ":BufferLineCycleNext <CR>", { desc = "Next buffer" })
    vim.keymap.set( "n", "[b", ":BufferLineCyclePrev <CR>", { desc = "Prev buffer" })
    vim.keymap.set( "n", "]b", ":BufferLineCycleNext <CR>", { desc = "Next buffer" })
  end
}
