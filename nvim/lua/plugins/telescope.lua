-- https://github.com/nvim-telescope/telescope.nvim
--[[ Telescope.nvim is a plugin for fuzzy finding and neovim. It helps you search,
filter, find and pick things in Lua. ]]--

require("telescope").setup()

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'Telescope find git files' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help_tags' })
vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, { desc = 'Telescope lsp_document_symbols' })
