-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set termguicolors to enable highlight groups
vim.opt.termguicolors = true

local function open_nvim_tree()

  -- open the tree
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

-- -- close nvim tree when last window is closed
-- vim.api.nvim_create_autocmd("BufEnter", {
--   nested = true,
--   callback = function()
--     if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
--       vim.cmd "quit"
--     end
--   end
-- })

vim.keymap.set('n', '<C-n>', '<cmd>NvimTreeToggle<CR>', { noremap = true, silent = true })

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
  end,
}

