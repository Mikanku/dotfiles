vim.keymap.set('i', 'jk', '<ESC>')

vim.keymap.set("n", "<leader>ff", ":lua require('telescope.builtin').find_files()<cr>")
vim.keymap.set("n", "<leader>fg", ":lua require('telescope.builtin').live_grep()<cr>")

