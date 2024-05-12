return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "olimorris/neotest-rspec",
  },
  config = function()
    local neotest = require("neotest")
    neotest.setup({
      adapters = {
        require("neotest-rspec")
      },
    })

    vim.keymap.set("n", "<leader>tf", function()
      neotest.run.run(vim.fn.expand("%"))
    end)
    vim.keymap.set("n", "<leader>tn", function()
      neotest.run.run()
    end)
    vim.keymap.set("n", "<leader>ts", function()
      neotest.summary.toggle()
    end)
    vim.keymap.set("n", "<leader>to", function()
      neotest.output_panel.toggle()
    end)
  end
}
