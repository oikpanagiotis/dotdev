local builtin = require('telescope.builtin')
local file_browse = require "telescope".extensions.file_browser.file_browser

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

vim.keymap.set('n', '<leader>fb', file_browse, {})

--vim.api.nvim_set_keymap(
--   "n",
--   "<leader>fb",
--   ":Telescope file_browse<CR>",
--   {noremap = true}
--)

require("telescope").load_extension "file_browser"
