vim.api.nvim_set_keymap('n', '<leader>tt', ':ToggleTerm<CR>', {noremap = true, silent = true})

return {
  {'akinsho/toggleterm.nvim', version = "*", opts = {}}
}
