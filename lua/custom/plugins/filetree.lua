-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

vim.keymap.set('n', '<C-b>', '<Cmd>Neotree toggle<CR>')
vim.keymap.set("n", "<leader>nt", "<Cmd>Neotree toggle current reveal_force_cwd<CR>")
vim.keymap.set("n", "<leader>nr", "<Cmd>Neotree reveal<CR>")
vim.keymap.set("n", "<leader>nc", "<Cmd>:Neotree float reveal_file=<cfile> reveal_force_cwd<CR>")
vim.keymap.set("n", "<leader>nb", "<Cmd>:Neotree toggle show buffers right<CR>")
vim.keymap.set("n", "<leader>ngs", "<Cmd>:Neotree float git_status<CR>")

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    require('neo-tree').setup {}
  end,
}
