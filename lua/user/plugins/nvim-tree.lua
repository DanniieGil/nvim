return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 40,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
      git = {
        enable = true,
      },
      renderer = {
        highlight_git = true,
        icons = {
          show = {
            git = true,
          },
        },
      },
    }

    vim.keymap.set("n","<leader>ee","<cmd>NvimTreeToggle<CR>")
    vim.keymap.set("n","<leader>ec","<cmd>NvimTreeCollapse<CR>")
    -- vim.keymap.set("n","<leader>er","<cmd>NvimTreeFocus<CR>")
    -- vim.keymap.set("n","<leader>ee","<cmd>NvimTreeOpen<CR>")
    -- vim.keymap.set("n","<leader>ef","<cmd>NvimTreeClose<CR>")
    -- vim.keymap.set("n","<leader>er","<cmd>NvimTreeFindFile<CR>")
    -- vim.keymap.set("n","<leader>er","<cmd>NvimTreeFindFileToggle<CR>")
    -- vim.keymap.set("n","<leader>er","<cmd>NvimTreeResize<CR>")
    vim.keymap.set("n","<leader>ecc","<cmd>NvimTreeCollapseKeepBuffers<CR>")
  end
}
