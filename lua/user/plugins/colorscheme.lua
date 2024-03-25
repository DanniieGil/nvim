-- return {
-- 	"bluz71/vim-nightfly-colors",
-- 	priority = 1000,
-- 	config = function()
-- 		vim.cmd([[colorscheme nightfly]])
-- 	end
-- }
--
return { 
  "catppuccin/nvim", 
  name = "catppuccin", 
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("catppuccin-frappe")
  end
}
