local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd.source(vimrc)

require("plugins")
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})


require("catppuccin").setup({
	transparent_background = true
})
vim.cmd.colorscheme "catppuccin"

local builtin = require('telescope.builtin')

vim.api.nvim_del_keymap('n', 'Y')
vim.keymap.set('n', '<c-n>', "<cmd>NvimTreeToggle<CR>", { remap = true })
vim.keymap.set('n', '<c-b>', "<cmd>NvimTreeFindFileToggle<CR>", { remap = true })
vim.keymap.set('n', '<c-t>', "<cmd>tabe<CR>", { remap = true })
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<C-o>', builtin.find_files, {})
