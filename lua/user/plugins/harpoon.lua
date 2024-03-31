return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")

    harpoon:setup()

    vim.keymap.set("n", "<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Open harpoon window simple" })
    vim.keymap.set("n", "<leader>H", function() harpoon:list():append() end, { desc = "Add file to harpoon list" })

    vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "Select file 1 of harpoon list" })
    vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "Select file 2 of harpoon list" })
    vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "Select file 3 of harpoon list" })
    vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "Select file 4 of harpoon list" })
    vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end, { desc = "Select file 5 of harpoon list" })

    -- basic telescope configuration
    local conf = require("telescope.config").values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
          table.insert(file_paths, item.value)
      end

      require("telescope.pickers").new({}, {
          prompt_title = "Harpoon",
          finder = require("telescope.finders").new_table({
              results = file_paths,
          }),
          previewer = conf.file_previewer({}),
          sorter = conf.generic_sorter({}),
      }):find()
    end

    vim.keymap.set("n", "<leader>hh", function() toggle_telescope(harpoon:list()) end, { desc = "Open harpoon window with UI Telescope"})

    harpoon:extend({
      UI_CREATE = function(cx)
        vim.keymap.set("n", "<C-v>", function()
          harpoon.ui:select_menu_item({ vsplit = true })
        end, { buffer = cx.bufnr })

        vim.keymap.set("n", "<C-x>", function()
          harpoon.ui:select_menu_item({ split = true })
        end, { buffer = cx.bufnr })

        vim.keymap.set("n", "<C-t>", function()
          harpoon.ui:select_menu_item({ tabedit = true })
        end, { buffer = cx.bufnr })
      end,
    })
  end
}
