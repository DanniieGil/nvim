return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      window = {
        mappings = {
          ["P"] = { "toggle_preview", config = { use_float = false, use_image_nvim = true } },
          ["R"] = { "refresh" },
          ["i"] = "show_file_details",
          ["<"] = "prev_source",
          [">"] = "next_source",
          ["?"] = "show_help",
        }
      }
    })
    vim.keymap.set("n", "<leader>ee", ":Neotree toggle<CR>", { desc = "Open/Close FileSystem NeoTree" })
    vim.keymap.set("n", "<leader>eef", ":Neotree toggle float<CR>", { desc = "Open/Close Float NeoTree" })
    vim.keymap.set("n", "<leader>eb", ":Neotree toggle buffers<CR>", { desc = "Open/Close Buffers NeoTree" })
    vim.keymap.set("n", "<leader>eg", ":Neotree toggle git_status<CR>", { desc = "Open/Close GitStatus NeoTree" })
  end
}
