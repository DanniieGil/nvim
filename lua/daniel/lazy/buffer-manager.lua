return {
  "j-morano/buffer_manager.nvim",
  config = function() 
    require("buffer_manager").setup({
      select_menu_item_commands = {
        v = {
          key = "<C-v>",
          command = "vsplit"
        },
        h = {
          key = "<C-h>",
          command = "split"
        }
      },
      highlight = 'Normal:BufferManagerBorder',
      win_extra_options = {
        winhighlight = 'Normal:BufferManagerNormal',
      },
    })
    vim.keymap.set("n", "<leader>bo", ":lua require('buffer_manager.ui').toggle_quick_menu() <CR>", { desc = "Open list buffers" })
    vim.keymap.set("n", "<leader>bs", ":lua require('buffer_manager.ui').save_menu_to_file() <CR>", { desc = "Save list buffers" })
    vim.keymap.set("n", "<leader>bl", ":lua require('buffer_manager.ui').load_menu_from_file() <CR>", { desc = "Load list buffers" })
    vim.api.nvim_set_hl(0, "BufferManagerModified", { fg = "green" })
  end
}
