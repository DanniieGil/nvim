return {
  'goolord/alpha-nvim',
  dependencies = {
      'nvim-tree/nvim-web-devicons',
      'nvim-lua/plenary.nvim'
  },
  config = function ()
    local alpha = require'alpha'
    local dashboard = require'alpha.themes.dashboard'

    local logo = [[
      ██╗░░██╗░█████╗░███╗░░░███╗███████╗
      ██║░░██║██╔══██╗████╗░████║██╔════╝
      ███████║██║░░██║██╔████╔██║█████╗░░
      ██╔══██║██║░░██║██║╚██╔╝██║██╔══╝░░
      ██║░░██║╚█████╔╝██║░╚═╝░██║███████╗
      ╚═╝░░╚═╝░╚════╝░╚═╝░░░░░╚═╝╚══════╝
              --- Daniel Gil ---
    ]]

    dashboard.section.header.val = vim.split(logo, "\n")

    dashboard.section.buttons.val = {
      dashboard.button( "f", "  Find file",    ":Telescope find_files <CR>"),
      dashboard.button( "w", "  Find text",    ":Telescope live_grep <CR>"),
      dashboard.button( "w", "  Find folder",  ":Telescope file_browser <CR>"),
      dashboard.button( "r", "  Recent files", ":Telescope oldfiles <CR>"),
      dashboard.button( "l", "󰒲  Lazy",         ":Lazy <CR>"),
      dashboard.button( "q", "󰅚  Quit NVIM" ,   ":qa <CR>"),
    }

    alpha.setup(dashboard.config)

    vim.api.nvim_create_autocmd("User", {
      once = true,
      pattern = "LazyVimStarted",
      callback = function()
        local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        dashboard.section.footer.val = "⚡ Neovim loaded "
          .. stats.loaded
          .. "/"
          .. stats.count
          .. " plugins in "
          .. ms
          .. "ms"
        pcall(vim.cmd.AlphaRedraw)
      end,
    })
  end
};
